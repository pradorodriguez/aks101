@description('The name of the Managed Cluster resource.')
param acrName string

@description('The location of the Managed Cluster resource.')
param location string

resource acr 'Microsoft.ContainerRegistry/registries@2021-06-01-preview' = {
  name: acrName
  location: location
  sku: {
    name: 'Basic'
  }
  identity: {
    type: 'SystemAssigned'
  }
  properties: {
    adminUserEnabled: true
  }
}

output acrName string = acr.name
output acrId string = acr.id
output acrLoginServer string = acr.properties.loginServer
