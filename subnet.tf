resource "aws_subnet" "pub-subnet-1" {
  vpc_id     = aws_vpc.demovpc.id
  cidr_block = "10.0.0.0/28"
  availability_zone       = "us-east-1a"
  tags = {
    Name = "pub-subnet-1"
}
}

resource "aws_subnet" "pub-subnet-2" {
  vpc_id     = aws_vpc.demovpc.id
  cidr_block = "10.0.0.16/28"
  availability_zone       = "us-east-1b"
  tags = {
    Name = "pub-subnet-2"
  }
}

resource "aws_subnet" "pri-subnet-1" {
  vpc_id     = aws_vpc.demovpc.id
  cidr_block = "10.0.0.32/28"
  availability_zone       = "us-east-1a"
  tags = {
    Name = "pri-subnet-1"
}
}

resource "aws_subnet" "pri-subnet-2" {
  vpc_id     = aws_vpc.demovpc.id
  cidr_block = "10.0.0.48/28"
  availability_zone       = "us-east-1b"
  tags = {
    Name = "pri-subnet-2"
  }
}
