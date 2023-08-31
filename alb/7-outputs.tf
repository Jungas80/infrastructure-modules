output "alb_dns_name" {
  value       = aws_lb.this.dns_name
  description = "The DNS name of the ALB."
}

output "asg_name" {
  value       = aws_autoscaling_group.this.name
  description = "The name of the Auto Scaling Group."
}

output "target_group_arn" {
  value       = aws_lb_target_group.this.arn
  description = "The ARN of the Target Group."
}

output "alb_security_group_id" {
  value = aws_security_group.alb_sg.id
}
