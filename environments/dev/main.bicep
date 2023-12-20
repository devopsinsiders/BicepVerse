targetScope = 'resourceGroup'

module vnetSubnetModule '../../modules/vnet-subnet.bicep' = {
  name: 'vnetSubnetModule'
  params: {
    location: 'East US'
    virtualNetworkName: 'devopsinsiders-vnet'
    addressPrefix: '10.0.0.0/16'
  }
}

