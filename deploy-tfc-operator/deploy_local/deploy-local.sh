#!usr/bin/zsh
namespace="app-platform-k8s";
#set cluster context to local docker K8s
kubectl config current-context
kubectl config use-context docker-desktop

#Export config
kubectl config view --raw > $HOME/kubeconfig
export KUBE_CONFIG_PATH=$HOME/kubeconfig # Environment used by terraform run

terraform init; terraform apply

kubectl get namespace
kubectl -n "$namespace" get pods
kubectl config set-context --current --namespace="$namespace"

#install arg workflows tpo argo namespace
kubectl create namespace argo
kubectl apply -n argo -f https://github.com/argoproj/argo-workflows/releases/download/v3.4.11/install.yaml