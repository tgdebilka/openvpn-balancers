data "vkcs_compute_flavor" "compute" {
  name = var.compute_flavor
}

data "vkcs_images_image" "compute" {
  name = var.image_name
}

resource "vkcs_compute_instance" "compute1" {
  name                    = "openvpn1-Romanova"
  flavor_id               = data.vkcs_compute_flavor.compute.id
  key_pair                = var.key_pair_name
  security_groups         = ["default","Romanova_FW","ssh"]
  availability_zone       = var.availability_zone_name

  block_device {
    uuid                  = data.vkcs_images_image.compute.id
    source_type           = "image"
    destination_type      = "volume"
    volume_type           = "ceph-hdd"
    volume_size           = 10
    boot_index            = 0
    delete_on_termination = true
  }

  network {
    uuid = vkcs_networking_network.bimbim1.id
  }

  depends_on = [
    vkcs_networking_network.bimbim1,
    vkcs_networking_subnet.bimbim1
  ]
}

resource "vkcs_compute_instance" "compute2" {
  name                    = "openvpn2-Romanova"
  flavor_id               = data.vkcs_compute_flavor.compute.id
  key_pair                = var.key_pair_name
  security_groups         = ["default","Romanova_FW","ssh"]
  availability_zone       = var.availability_zone_name2

  block_device {
    uuid                  = data.vkcs_images_image.compute.id
    source_type           = "image"
    destination_type      = "volume"
    volume_type           = "ceph-hdd"
    volume_size           = 10
    boot_index            = 0
    delete_on_termination = true
  }

  network {
    uuid = vkcs_networking_network.bimbim1.id
  }
  
  depends_on = [
    vkcs_networking_network.bimbim1,
    vkcs_networking_subnet.bimbim1
  ]
  }
  
  resource "vkcs_compute_instance" "compute3" {
  name                    = "openvpn3-Romanova"
  flavor_id               = data.vkcs_compute_flavor.compute.id
  key_pair                = var.key_pair_name
  security_groups         = ["default","Romanova_FW","ssh"]
  availability_zone       = var.availability_zone_name3

  block_device {
    uuid                  = data.vkcs_images_image.compute.id
    source_type           = "image"
    destination_type      = "volume"
    volume_type           = "ceph-hdd"
    volume_size           = 10
    boot_index            = 0
    delete_on_termination = true
  }

  network {
    uuid = vkcs_networking_network.bimbim1.id
  }
  
  depends_on = [
    vkcs_networking_network.bimbim1,
    vkcs_networking_subnet.bimbim1
  ]
  }
  
  resource "vkcs_compute_instance" "compute4" {
  name                    = "load_balancer-Romanova"
  flavor_id               = data.vkcs_compute_flavor.compute.id
  key_pair                = var.key_pair_name
  security_groups         = ["default","Romanova_FW","ssh"]
  availability_zone       = var.availability_zone_name

  block_device {
    uuid                  = data.vkcs_images_image.compute.id
    source_type           = "image"
    destination_type      = "volume"
    volume_type           = "ceph-hdd"
    volume_size           = 10
    boot_index            = 0
    delete_on_termination = true
  }

  network {
    uuid = vkcs_networking_network.bimbim1.id
  }
  
  depends_on = [
    vkcs_networking_network.bimbim1,
    vkcs_networking_subnet.bimbim1
  ]
  }
