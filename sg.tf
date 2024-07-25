resource "aws_security_group" "demosg" {
  name        = "Demo sg"
  description = "Allow SSH traffic for connection"
  vpc_id      = aws_vpc.demovpc.id
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 9000
    to_port     = 9000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
cidr_blocks      = ["0.0.0.0/0"]
}
  tags = {
    Name = "Demo sgg"
  }
}
