resource "aws_launch_template" "nginx" {
  name_prefix   = "nginx-"
  image_id      = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  user_data     = base64encode(file("user_data.sh"))
}

resource "aws_autoscaling_group" "asg" {
  desired_capacity     = 2
  max_size             = 3
  min_size             = 1
  launch_template {
    id      = aws_launch_template.nginx.id
    version = "$Latest"
  }
  vpc_zone_identifier = var.subnet_ids
  target_group_arns   = [aws_lb_target_group.nginx.arn]
  health_check_type   = "EC2"
}

resource "aws_lb" "alb" {
  name               = "nginx-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [var.alb_sg]
  subnets            = var.subnet_ids
}
