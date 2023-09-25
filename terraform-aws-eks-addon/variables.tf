
variable "vpc_id" {
  type    = string
  default = "vpc-0ca02263a9d1dde5d"
}

variable "region" {
  type    = string
  default = "ap-southeast-2"
}

variable "cluster_name" {
  type    = string
  default = "eks-cluster"
}

variable "cluster_endpoint" {
  type    = string
  default = "https://C9D5A84468B401804D50A0E98AFD2D3F.sk1.ap-southeast-2.eks.amazonaws.com"
}

variable "cluster_version" {
  type    = string
  default = "1.27"
}

variable "oidc_provider_arn" {
  type    = string
  default = "arn:aws:iam::855831148133:oidc-provider/oidc.eks.ap-southeast-2.amazonaws.com/id/C9D5A84468B401804D50A0E98AFD2D3F"
}