output "windows_vm_public_ip" {
  description = "Public IP address of the Windows VM"
  value       = aws_instance.windows_vm.public_ip
}

output "windows_vm_id" {
  description = "ID of the Windows EC2 instance"
  value       = aws_instance.windows_vm.id
}
