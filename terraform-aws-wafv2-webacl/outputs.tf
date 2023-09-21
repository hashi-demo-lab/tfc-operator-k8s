output "waf_arn" {
  value = aws_wafv2_web_acl.this.arn
}

output "waf_capacity" {
  value = aws_wafv2_web_acl.this.capacity
}

output "waf_id" {
  value = aws_wafv2_web_acl.this.id
}

output "waf_tags_all" {
  value = aws_wafv2_web_acl.this.tags_all
}