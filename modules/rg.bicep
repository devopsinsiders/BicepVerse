targetScope = 'subscription'

// Define parameters
param location string = 'East US'
param rgName string = 'rg123'

// Create resource group
resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: rgName
  location: location
}

output rgResourceId string = rg.id
