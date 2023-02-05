output "foo_ami_output" {
  value = aws_instance.foo.ami
}
output "foo_ami_host_id_output" {
  value = aws_instance.foo.host_id
}