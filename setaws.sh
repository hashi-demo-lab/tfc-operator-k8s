aws eks --region ap-southeast-2 update-kubeconfig --name eks-cluster-networks

namespace="app-hashibank"
kubectl config set-context --current --namespace="$namespace"

kubectl get namespace