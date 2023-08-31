resource "aws_launch_template" "this" {
  name_prefix = "asg-lt"
  description = "Launch template for ASG"

  image_id = var.ami_id

  block_device_mappings {
    device_name = "/dev/xvda"

    ebs {
      volume_type = var.volume_type
      volume_size = var.volume_size
    }
  }

  ebs_optimized = var.ebs_optimized

  instance_type = var.instance_type
  key_name      = var.key_name

  vpc_security_group_ids = [aws_security_group.alb_sg.id]

  user_data = var.user_data != "" ? base64encode(var.user_data) : null

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name        = "asg-instance"
      Environment = var.environment
    }
  }

  lifecycle {
    create_before_destroy = true
  }
}
