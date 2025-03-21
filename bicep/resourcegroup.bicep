targetScope='subscription'

@description('Location. Only the following locations are allowed: centralus, eastus2, westeurope, westus2, southeastasia')
@allowed([
  'centralus'
  'eastus2'
  'westeurope'
  'westus2'
  'southeastasia'
])
param location string

param suffix string = uniqueString('${location}${subscription().subscriptionId}')
param resourceGroupName string = 'rg-aks-${suffix}'

resource resourceGroup 'Microsoft.Resources/resourceGroups@2024-03-01' = {
  name: resourceGroupName
  location: location
}

output suffix string = suffix
output resourceGroupName string = resourceGroup.name
output location string = resourceGroup.location
