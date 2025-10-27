locals {
  common_tags = {                  # A reusable map of tags that can be applied to multiple AWS resources.Tags help in identifying resources by project, environment, and management tool.
    Project     = var.project_name # Dynamic tag - takes value from input variable 'project_name'
    Environment = var.environment  # Dynamic tag - takes value from input variable 'environment'
    Terraform   = true             # Static tag - indicates that this resource is managed by Terraform
  }
  common_name_suffix = "${var.project_name}-${var.environment}" # roboshop-dev

}

