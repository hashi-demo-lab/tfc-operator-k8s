#!usr/bin/zsh
namespace="app-hashibank";
#set cluster context to local docker K8s
kubectl config use-context docker-desktop

#Export config
kubectl config view --raw > $HOME/kubeconfig
export KUBE_CONFIG_PATH=$HOME/kubeconfig # Environment used by terraform run

terraform init; terraform apply -auto-approve

kubectl get namespace
kubectl -n "$namespace" get pods
kubectl config set-context --current --namespace="$namespace"