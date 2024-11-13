resource "virtualbox_vm" "node" {
  name      = "ids-polytech"
  image     = "./template/ids_polytech.box"
  cpus      = 2
  memory    = "2048 mib"
  user_data = file("${path.module}/user_data")

  network_adapter {
    type           = "hostonly"
    device         = "IntelPro1000MTDesktop"
    host_interface = "VirtualBox Host-Only Ethernet Adapter"
  }

  network_adapter {
    type           = "nat"
  }
}