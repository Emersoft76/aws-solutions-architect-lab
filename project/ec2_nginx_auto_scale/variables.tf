variable "region" {
  default = "us-east-1"
}
variable "subnet_ids" {
  type = list(string)
}
variable "alb_sg" {
  type = string
}
