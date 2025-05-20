output "vm_instances" {
  description = "All VM instances information"
  value = {
    web = {
      instance_name = yandex_compute_instance.platform.name
      external_ip   = yandex_compute_instance.platform.network_interface[0].nat_ip_address
      fqdn          = yandex_compute_instance.platform.fqdn
    }
    db = {
      instance_name = yandex_compute_instance.platform-b.name
      external_ip   = yandex_compute_instance.platform-b.network_interface[0].nat_ip_address
      fqdn          = yandex_compute_instance.platform-b.fqdn
    }
  }
}