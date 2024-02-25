#!usr/bin/zsh
doormat login -f && eval $(doormat aws export --account ${DOORMAT_AWS_USER})
VARSET=varset-UTad3ixYVAvo41W9
doormat aws tf-push variable-set --id $VARSET --role arn:aws:iam::855831148133:role/aws_simon.lynch_test-developer

namespace="app-hashibank";
#set cluster context to local docker K8s
aws eks --region ap-southeast-2 update-kubeconfig --name eks-cluster-networks

#Export config
kubectl config view --raw > $HOME/kubeconfig
export KUBE_CONFIG_PATH=$HOME/kubeconfig # Environment used by terraform run
kubectl get namespace

terraform init; terraform apply -auto-approve

kubectl get namespace
kubectl -n "$namespace" get pods
kubectl config set-context --current --namespace="$namespace"