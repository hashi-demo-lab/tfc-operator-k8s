# deploy-tfc-operator

## Pre-requisites

* Export kubeconfig path to environment

```export KUBE_CONFIG_PATH=$HOME/kubeconfig```

# Overview

## TFE/TFC config

- Creates a TFE project within the organization.
- Defines a TFE variable set for the project.
- Creates a TFE team with organization-wide access.
- Grants admin access to the TFE team for the project.
- Generates a TFE team token and associates it with the team.
- Sets a TFE token as an environment variable in the TFE variable set.

## K8s config

- Creates a K8s namespace named after the TFE project.
- Creates a K8s secret containing the TFE team token.
- Deploys the Terraform Cloud Operator for K8s using a Helm chart.
