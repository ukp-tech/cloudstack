variable "zone" {
    default = "Sandbox-simulator"
}

resource "cloudstack_instance" "Stack_SM" {
    name = "cloudstackSM"
    service_offering= "Medium Instance"
    network_id = "48514c89-51d9-456e-8100-88954f502ccf"
    ip_address = "10.1.1.250"
    template = "CentOS 5.66"
    zone = var.zone
}

resource "cloudstack_disk" "default" {
  name               = "test-disk"
  attach             = "true"
  disk_offering      = "custom"
  size               = 50
  virtual_machine_id = cloudstack_instance.Stack_SM.id
  zone               = var.zone
}