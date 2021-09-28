# Define required providers
terraform {
required_version = ">= 0.14.0"
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.35.0"
    }
  }
}

# Configure the OpenStack Provider
provider "openstack" {
  user_name   = "admin"
  tenant_name = "admin"
  password    = "jX5RMA0bCQ8wx0cdEhyHHF4LzS04oGXcZoN0PXz7"
  auth_url    = "http://10.10.10.254:35357/v3"
  region      = "RegionOne"
}

# Create vm
resource "openstack_compute_instance_v2" "instance" {
  name            = "instance-${count.index}"
  image_id        = "0f2e0b6c-98bf-4165-918d-b9af711bcc28"
  flavor_id       = "1"
  key_pair        = "mykey"
  security_groups = ["default"]
  count           = 5

  network {
    name = "demo-net"
  }
}
