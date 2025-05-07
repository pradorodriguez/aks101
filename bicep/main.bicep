@description('Location. Only the following locations are allowed: centralus, eastus2, westeurope, westus2, southeastasia')
@allowed([
  'centralus'
  'eastus2'
  'westeurope'
  'westus2'
  'southeastasia'
])
param location string

param suffix string

@description('The name of the ACR resource.')
param acrName string = 'acr${suffix}'

@description('The name of the Managed Cluster resource.')
param clusterName string = 'aks-${suffix}'

@description('AKS Workers VM Size')
param agentVMSize string = 'Standard_D2als_v6'

module aksModule './modules/aks.bicep' = {
  name: 'aksModule'
  params: {
    clusterName: clusterName
    location: location    
    agentVMSize: agentVMSize     
  }  
}

module acrModule './modules/acr.bicep' = {
  name: 'acrModule'
  params: {
    acrName: acrName
    location: location
    aksPrincipalId: aksModule.outputs.aksIdentityId
  }
}


output aksName string = aksModule.outputs.aksName
output acrName string = acrModule.outputs.acrName
output acrLoginServer string = acrModule.outputs.acrLoginServer
