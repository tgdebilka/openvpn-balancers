# Get external network with Internet access
data "vkcs_networking_network" "ext-net" {
   sdn        = "neutron"
   external   = true
}
# Create a network
resource "vkcs_networking_network" "bimbim1" {
   name       = "project-romanova-net"
   sdn        = "neutron"
}
# Create a subnet
resource "vkcs_networking_subnet" "bimbim1" {
   name       = "project-romanova-subnet"
   network_id = vkcs_networking_network.bimbim1.id
   cidr       = "192.168.199.0/24"
}
# Create a router
resource "vkcs_networking_router" "bimbim1" {
   name       = "project-romanova-router"
   sdn        = "neutron"
   external_network_id = data.vkcs_networking_network.ext-net.id
}
# Connect the network to the router
resource "vkcs_networking_router_interface" "bimbim1" {
   router_id  = vkcs_networking_router.bimbim1.id
   subnet_id  = vkcs_networking_subnet.bimbim1.id
}
