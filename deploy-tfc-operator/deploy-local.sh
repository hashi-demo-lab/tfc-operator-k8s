#!usr/bin/zsh

#set cluster context to local docker
kubectl config use-context docker-desktop

#Export config
kubectl config view --raw > $HOME/kubeconfig
export KUBE_CONFIG_PATH=$HOME/kubeconfig # Environment used by terraform run

terraform init; terraform apply -auto-approve;

kubectl get namespace;
kubectl -n app-hashibank get pods;