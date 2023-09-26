WAF_ARN="TEST3"
if [ -z "$WAF_ARN" ]; then
echo "Environment variable WAF_ARN is not set!"
# Handle the error or exit
exit 1
else
# Your main logic here
echo "WAF_ARN is set with value: $WAF_ARN"
kubectl -n app-hashibank patch ingress hashibank --type=json -p "[{\"op\": \"replace\", \"path\": \"/metadata/annotations/alb.ingress.kubernetes.io~1wafv2-acl-arn\", \"value\": \"$WAF_ARN\"}]"
fi




#kubectl patch ingress hashibank --type=merge --patch "{\"metadata\": {\"annotations\": {\"alb.ingress.kubernetes.io/wafv2-acl-arn\": \"$WAF_ARN\"}}}"