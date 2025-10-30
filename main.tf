resource "aws_security_group" "main" {
  name        = var.sg_name
  description = var.sg_description
  vpc_id      = var.vpc_id
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(        # Tags are merged from multiple sources: user-defined tags, local tags, and a dynamic Name tag.
    var.sg_tags,       # Custom VPC tags passed via variables
    local.common_tags, # Common tags like environment, project name, etc.
    {
      Name = "${local.common_name_suffix}-${var.sg_name}" # Example: roboshop-dev-catalogue
    }
  )
}


