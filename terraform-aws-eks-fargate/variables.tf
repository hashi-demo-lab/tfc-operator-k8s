variable "cluster_name" {
  type    = string
  default = "eks-cluster"
}

variable "private_subnets" {
  type = list(string)
  default = []
}

variable "vpc_id" {
  type = string
  default = ""
}

variable "region" {
  type    = string
  default = "ap-southeast-2"
}

