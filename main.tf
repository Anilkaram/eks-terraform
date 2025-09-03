resource "aws_instance" "terraform_Dev_server" {
  tags = {
    Name = "Terraform_dev_server"
  }
  ami = "ami-0360c520857e3138f"
  instance_type = "t3.small"
  key_name = "one"
  vpc_security_group_ids = ["sg-09773b89abacd3531"]
  root_block_device {
    volume_size = 20
  }
}
