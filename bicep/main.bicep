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

@description('The name of the Managed Cluster resource.')
param clusterName string = 'aks-${suffix}'

module aksModule './modules/aks.bicep' = {
  name: 'aksModule'
  params: {
    clusterName: clusterName
    location: location    
  }
}

output aksName string = aksModule.outputs.aksName
