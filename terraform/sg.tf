resource "aws_security_group" "ssh_access" {
  name        = "ssh-access"
  description = "Autorise les connexions SSH entrantes"
  vpc_id      = "vpc-09f21dfe9754e9559"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/32"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "SSH Access"
  }
}

resource "aws_security_group" "nginx_web" {
  name        = "nginx-web"
  description = "Autorise le trafic HTTP et HTTPS pour Nginx"
  vpc_id      = "vpc-09f21dfe9754e9559"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(local.tags, {
    Name = "Nginx Web Traffic"
  })
}