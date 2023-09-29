kubectl config use-context docker-desktop

namespace="app-platform-k8s"
kubectl config set-context --current --namespace="$namespace"

kubectl get namespace