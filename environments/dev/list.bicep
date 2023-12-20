param storageNames array = [
  'contoso'
  'fabrikam'
  'coho'
]
param location string = resourceGroup().location

resource storageAcct 'Microsoft.Storage/storageAccounts@2022-09-01' = [
  for name in storageNames: {
      name: '${name}${uniqueString(resourceGroup().id)}'
      location: location
      sku: {
        name: 'Standard_LRS'
      }
      kind: 'Storage'
    }
]
