variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "vpc_name" {
  type    = string
  default = "MyVPC"
}

variable "region" {
  type    = string
  default = "ap-southeast-2"
}