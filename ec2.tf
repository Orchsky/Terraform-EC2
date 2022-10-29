# data "aws_ami" "ubuntu" {
#   most_recent = true

# #   filter {
# #     name   = "name"
# #     values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
# #   }

#   filter {
#     name   = "free tier eligible"
#     values = [true]
#   }

# #   owners = ["099720109477"] # Canonical
# }

resource "aws_instance" "ec2" {
  ami                    = var.ami
  instance_type          = var.ec2type
  key_name               = var.keypair
  subnet_id              = aws_subnet.publicsubnet.id
  vpc_security_group_ids = [aws_security_group.sg.id]
  #associate_public_ip_address = true
  user_data = file("tools.sh")
  tags = {
    Name = var.ec2-tag-name
  }
}