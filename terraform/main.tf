resource "aws_instance" "website_1" {
  ami           ="ami-05ed4a24277883fb9"  
  instance_type = local.environment["dev"].instance_type
  # subnet_id     = "data.aws_subnet.selected.id"
  subnet_id = "subnet-0822dc412c44968f8"

  vpc_security_group_ids = [
    aws_security_group.ssh_access.id,
    aws_security_group.nginx_web.id
  ]

  tags = merge(local.tags, {
    Name = "MyInstanceAMI2"
  })
}

resource "aws_instance" "website_2" {
  ami           ="ami-05ed4a24277883fb9"
  instance_type = local.environment["dev"].instance_type 
  # subnet_id     = "data.aws_subnet.selected.id"
  subnet_id = "subnet-0822dc412c44968f8"

  tags = merge(local.tags, {
    Name = "MyInstanceAMI3"
  })
}