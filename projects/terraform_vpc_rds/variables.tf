variable "region"         { default = "us-east-1" }
variable "vpc_cidr"       { default = "10.0.0.0/16" }
variable "private_subnets" { type = list(string) }
variable "azs"            { type = list(string) }
variable "db_user"        {}
variable "db_pass"        {}
