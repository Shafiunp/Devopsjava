output "foo_ami_output" {
  value = aws_instance.foo1.ami
}
output "foo_tags_output" {
  value = aws_instance.foo1.tags
}