resource "aws_instance" "demoinstance" {
  ami                         = "AKIAQEFWAXWT7ZW45X5Q"
  instance_type               = "t2.micro"
  count                       = 1
  key_name                    = "dolly"
  vpc_security_group_ids      = ["${aws_security_group.demosg.id}"]
  subnet_id                   = "${aws_subnet.pub-subnet-1.id}"
  associate_public_ip_address = true   
  user_data                   = "${file("userdata.sh")}"

  tags = {
    Name = "demoinstance"
  }
}
