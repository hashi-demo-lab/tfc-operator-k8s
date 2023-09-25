#!usr/bin/zsh
doormat login -f && eval $(doormat aws export --account ${DOORMAT_AWS_USER})
VARSET=varset-UTad3ixYVAvo41W9
doormat aws tf-push variable-set --id $VARSET --role arn:aws:iam::855831148133:role/aws_simon.lynch_test-developer



kubectl config use-context docker-desktop
NAMESPACE="app-hashibank"
kubectl config set-context --current --namespace="$NAMESPACE"

kubectl apply -k .

kubectl get modules module-vpc-eks-cluster --watch -o yaml




# Get all pods in the namespace and store them in an array
#POD_ARRAY=($(kubectl get pods -n $NAMESPACE -o jsonpath='{.items[*].metadata.name}'))

# Print the pods to verify
#for POD in "${POD_ARRAY[@]}"; do
#    echo "Pod: $POD"
#    kubectl logs -f -n $NAMESPACE $POD &
#done

# Wait for all background log tailing processes
#wait


#kubectl get configmap platform-eks-fargate-env1-module-outputs -o yaml

#To force run
#kubectl patch module platform-eks-fargate-env1 --type=merge --patch '{"spec": {"restartedAt": "'`date -u -Iseconds`'"}}'

#exit
