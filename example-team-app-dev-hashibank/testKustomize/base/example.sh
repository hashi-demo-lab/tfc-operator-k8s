echo WAF_ARN_VALUE=$(kubectl get configmap module-hashibank-aws-waf-outputs -o=jsonpath='{.data.arn}') > ./environment.env
