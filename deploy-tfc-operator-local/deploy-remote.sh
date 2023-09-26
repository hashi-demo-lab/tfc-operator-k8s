#!usr/bin/zsh
namespace="app-hashibank";
#set cluster context to local docker K8s
aws eks --region ap-southeast-2 update-kubeconfig --name eks-cluster

#Export config
kubectl config view --raw > $HOME/kubeconfig
export KUBE_CONFIG_PATH=$HOME/kubeconfig # Environment used by terraform run
kubectl get namespace

terraform init; terraform apply -auto-approve

kubectl get namespace
kubectl -n "$namespace" get pods
kubectl config set-context --current --namespace="$namespace"