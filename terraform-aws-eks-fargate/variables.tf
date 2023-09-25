variable "region" {
  type    = string
  default = "ap-southeast-2"
}

variable "cluster_name" {
  type    = string
  default = "eks-cluster"
}

variable "private_subnets" {
  type = list(string)
  default = [
    "subnet-00b5911b728ef0978",
    "subnet-061f89cfe61aa76e8",
    "subnet-075ee3382356ed011",
  ]
}

variable "vpc_id" {
  type    = string
  default = "vpc-0ca02263a9d1dde5d"
}

