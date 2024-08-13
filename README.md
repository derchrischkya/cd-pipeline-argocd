# CD-PIPELINE-ARGOCD
This repository contains the ArgoCD pipeline for the CD pipeline.

The ArgoCD pipeline is a pipeline that is used to deploy the ArgoCD application to the Kubernetes cluster.

## Requirements
- kubectl
- docker with minikube

## Start K8S Cluster with ArgoCD
1. Clone the repository
2. Run the following command to start k8s cluster with argocd

```bash
make start_k8s
```

## Stop K8S Cluster with ArgoCD
1. Run the following command to stop k8s cluster with argocd

```bash
make stop_k8s
```

## Access ArgoCD
1. Run the following command to get the argocd password

```bash
echo $(kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d)
```

2. Run the following command to get the argocd server url

```bash
kubectl -n argocd port-forward svc/argocd-server 8080:443
```

3. Open the browser and access the argocd server url

```bash
https://localhost:8080
```

4. Login with the username `admin` and the password from step 1
