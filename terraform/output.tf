output "foo_ami_output" {
  value = aws_instance.foo1.ami
}
output "foo_ami_host_id_output" {
  value = aws_instance.foo1.host_id
}