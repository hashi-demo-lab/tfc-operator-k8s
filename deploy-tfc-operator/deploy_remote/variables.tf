variable "organization" {
  type    = string
  default = "hashi-demos-apj"
}

variable "operator_team" {
  type    = string
}

variable "namespace" {
  type = string
}

variable "cluster_endpoint" {
  type    = string
  default = "https://170E9D5C1509BA0935A30109B2F108E6.gr7.ap-southeast-2.eks.amazonaws.com"
}

variable "cluster_certificate_authority_data" {
  type    = string
  default = "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJYU1oNkRRMDFWdjh3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TXpBNU1qWXdNalUyTkRSYUZ3MHpNekE1TWpNd01qVTJORFJhTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUUNvUnFzcDMrYmhRWkg2b3h3NmpDRy9ISDBOajhSamtkUnRsR2ZrVUxzYkhSenVHcDRFdlhON252R1gKaDU3Z1NNOTdsM0pJY3dTTGpGZ3ZXbklKV203MDc1SUNhb2JSdVVSWGVGTVFXY1VtSy9RUkpXblUzRm5HcFVMdgp2dTBSQkFOaHBZbU5URytIZ1gvMnplTzIvQkdUOUdaeUFWekFnakRtNUFWU3lrLzlrWDdPTmxJS3VJSUZtRk4wCi9RVGlTazVWSDZSZmpwV3Q3cnluTWtIbFBCTDhnL0dXcFhqNklEamIrd21ONm5sNUlWbW1RalNvNGdzbytSUDYKMmFTVExLN0xQY1lmLzdPa29YWXVvZW5BQTI3ZUZBMkxVakpzVzRjTTVTN1ozZ3dsVHRFVTFlazVXejBxL1puMgpubW5hbXlPZDNtWFY0QnlyaU9vNFhCU1JuQU0xQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJRdjRDeDh6ekhicmlPMThjbDVTSlV0cE9jeFZqQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQlI4bGxlZ2ZRVQphWEtiUnB5ZW9WQjBZQ1hFUmF6NFhBOFBiRHh0Tkw1bUE1WUFnV3BCdURvdHRaek1RYXRrMmFWUTYrMkU1ZDZXCkk5R2xoRU5Zd1kzSzlRbjY1TDAvaGwwbVF5c0QvZFhhd0hRTE1ZOHpPbmN1ZG1OSnExaXpSSWlDbm5MaVZGL1oKY1pDeGNYSHhEMmZnT1I4RmltWFdKeExYR1VEc2tsMDRwbG5HcVlRdmprblJMd0dkc1l3QzFjbGVLb3N6a1hOdwo3bSsweEE3cHc2bHZQdnVxN1gwaSs0K09xcDBOeTRSUkhkZ1BENG55WXN2UHBTd2J5K3ljcDVHa3RJTG1ubkFUCk5RcmZ0UXlmY2VaVWZmUFdxaFFSVGtzKzlYd2hDVllscDVPSDdYUUlwYzFXSzBhbjFkSFZmYlIyN0dtZWZCRFUKWDZ0L0xSM2toM1RrCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
}

variable "cluster_name" {
type = string
default = "eks-cluster"
}