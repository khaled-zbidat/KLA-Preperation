output "sg_id" {
  description = "ID of the security group that allows RDP"
  value       = aws_security_group.rdp.id
}
