output "foo_ami_output" {
  value = aws_instance.foo1.ami
}
output "foo_tags_output" {
  value = aws_instance.foo1.tags
}
output "shafiun_ami_output" {
  value = aws_instance.shafiun.ami
}
output "shafiun_instance_type_output" {
  value = aws_instance.shafiun.instance_type
}
