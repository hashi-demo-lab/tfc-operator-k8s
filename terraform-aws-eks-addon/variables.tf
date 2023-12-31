
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
  default = "https://BA2ADB2451A6E6997E01268F681D04EC.yl4.ap-southeast-2.eks.amazonaws.com"
}

variable "cluster_version" {
  type    = string
  default = "1.27"
}

variable "oidc_provider_arn" {
  type    = string
  default = "arn:aws:iam::855831148133:oidc-provider/oidc.eks.ap-southeast-2.amazonaws.com/id/BA2ADB2451A6E6997E01268F681D04EC"
}

variable "cluster_certificate_authority_data" {
  type    = string
  default = "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJU2pZMG8rM3Vvakl3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TXpBNU1qVXdNVEl5TVRsYUZ3MHpNekE1TWpJd01USXlNVGxhTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUURwK2dIVi9sSGo5dXZ3QXlIRWpLVlhleFhZTU9lQW1OR3pJQS9yYUMzZ3dOU1NiaDdDaW11bXE5a0YKckNsQWYxVDl1dURPYmFxV2g2V3F4V0VwcDhvVWYzZUlZUzR3b3UwTTlRY3o2UFFjdERtZ0Q4blFnaHRhMGxCTAp2WExKTVZNcUFPRy93aGtaRlVGZ1RFL2tSRjY0WXNHcStWUmp3ZFJMbzhxUDBZN2Rxdi9idkZvdHBpbWtBMndhCkU1K1VwWGd5Z2JPbTdNOWJKZy9mOHUwaFJuVEExekZYTXpGOVpCZVkwUWl1bWx5YVZPRkttZm1Za0ErNTFyWlYKVlVCN2JsRmt2ZmZVNmg4SkF3bjhHV1NUR0FIR2ZhYXBFTGIveUxuR05KYSs0V0NtbkF4dFdRNThLVktaSHdMMQpUOHRRNDBETWJoa1hYMi9VQ3RmZFZVcFQxNVpqQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJUUzlwdHdSdVVRYmNxdThsOEJoR3BtbERoY3hUQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRREpoVkcwN2hCWApQOG5hb1VCaGxPdlpZWktlbWMzaW4yZnkxMEhaOVdWZ3RHb2EwWHZJakxmREhNbTh0SWV4VHI3cnp4RnpoRjVaClNGeFhaM1IrOEJ6NWVubEJVTjhGU3RKV1RkTFMwVHkwa0ZVaGltQjhiUjNhYXU3dFMzR2JQdGkxSTJGajRGOWIKTzJvb1lRM29uT3lnSGMzS1BjT3BxcHE2bzkvMGE0N3A4QTRtTTRZTlVZZkkrR1p3OGVhRzRLWDd1V28vMVFPKwp5TjZHTmZ1VVVuVGJLS2NDbkxKZVhhaTNNL3FYcmRsblZZdEgwK0RlNjVvaTkwNGpjR2VJelJ4Q1Q2aVp1TzY5CkMrOW93WjY1bTJlRmQzS0NzSEJtb2ZtSjF5MCs5aXpPeUJXZ2dHVGZldnFJelhIYkg3dXROWlFWU3JOT1QyRi8KV1NBa3R2U3lRb3hICi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
}