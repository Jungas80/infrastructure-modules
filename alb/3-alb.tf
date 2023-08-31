resource "aws_lb" "this" {
  name                       = "my-alb"
  internal                   = var.alb_internal
  load_balancer_type         = "application"
  security_groups            = [aws_security_group.alb_sg.id]
  subnets                    = var.alb_subnets
  enable_deletion_protection = var.enable_deletion_protection

  enable_http2 = true

  tags = {
    Name        = "my-alb"
    Environment = var.environment
  }
}
