output "vm_name" {
  value = linode_instance.main.label
}

output "vm_ip_address" {
  value = linode_instance.main.ip_address
}