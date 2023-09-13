#!usr/bin/zsh
brew install helm
helm repo add hashicorp https://helm.releases.hashicorp.com
helm repo update


# optional not required only for controller metrics to prometheus
#docker run -p 9090:9090 prom/prometheus

#search for beta versions
helm search repo hashicorp/terraform-cloud-operator --versions --devel



#create tfc team and project

# creare tfc team token

#install helm chart
helm install demo hashicorp/terraform-cloud-operator \
  --version 2.0.0-beta8 \
  --namespace tfc-operator-system \
  --create-namespace



# credentials file format

 #     credentials app.terraform.io {
 #        token = "TERRAFORM_CLOUD_API_TOKEN"
 #     }


#create k8s secret with TFE teams token in credentials file to read from
kubectl -n tfc-operator-system create secret generic terraformrc --from-file=$HOME/credentials


# Export Kubeconfig
kubectl config view --raw >> $HOME/kubeconfig
export KUBE_CONFIG_PATH=$HOME/kubeconfig

# Upgrade provider
#
# helm upgrade --namespace ${RELEASE_NAMESPACE} ${RELEASE_NAME} hashicorp/terraform
#


