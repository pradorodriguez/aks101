@description('The name of the Managed Cluster resource.')
param clusterName string

@description('The location of the Managed Cluster resource.')
param location string

@description('Disk size (in GB) to provision for each of the agent pool nodes. This value ranges from 0 to 1023. Specifying 0 will apply the default disk size for that agentVMSize.')
@minValue(0)
@maxValue(1023)
param osDiskSizeGB int = 128

@description('The number of nodes for the cluster.')
@minValue(1)
@maxValue(50)
param agentCount int = 1

@description('The size of the Virtual Machine.')
param agentVMSize string

resource aks 'Microsoft.ContainerService/managedClusters@2024-02-01' = {
  name: clusterName
  location: location
  identity: {
    type: 'SystemAssigned'
  }
  properties: {
    dnsPrefix: '${clusterName}-dns'
    agentPoolProfiles: [
      {
        name: 'agentpool'
        osDiskSizeGB: osDiskSizeGB
        osDiskType: 'Managed'
        enableAutoScaling: true
        count: agentCount
        maxCount: 3
        minCount: 1
        vmSize: agentVMSize
        osType: 'Linux'        
        mode: 'System'
      }
    ]
  }
}

resource acrPullRole 'Microsoft.Authorization/roleAssignments@2022-04-01' = {
  name: guid(resourceGroup().id, aks.id, 'acrpull')
  scope: resourceGroup()
  properties: {
    principalId: aks.identity.principalId
    roleDefinitionId: subscriptionResourceId('Microsoft.Authorization/roleDefinitions', '7f951dda-4ed3-4680-a7ca-43fe172d538d')
    principalType: 'ServicePrincipal'
  }
}

output aksName string = aks.name
