resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = { Name = "main-vpc" }
}

resource "aws_subnet" "private" {
  count             = 2
  cidr_block        = var.private_subnets[count.index]
  vpc_id            = aws_vpc.main.id
  availability_zone = var.azs[count.index]
  map_public_ip_on_launch = false
}

resource "aws_db_subnet_group" "rds_subnets" {
  name       = "rds-subnet-group"
  subnet_ids = aws_subnet.private[*].id
}

resource "aws_db_instance" "mysql" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  name                 = "labdb"
  username             = var.db_user
  password             = var.db_pass
  skip_final_snapshot  = true
  db_subnet_group_name = aws_db_subnet_group.rds_subnets.name
  vpc_security_group_ids = [aws_security_group.rds_sg.id]
}
