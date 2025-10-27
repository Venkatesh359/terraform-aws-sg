variable "sg_name" {
  type = string

}

variable "sg_description" {
  type    = string
  default = ""

}


variable "project_name" {
  type = string #mandatory

}

variable "environment" {
  type = string #mandatory

}

variable "vpc_id" {
  type = string

}

variable "sg_tags" {
  type    = map()
  default = {}

}

