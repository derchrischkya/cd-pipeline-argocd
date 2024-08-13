start_k8s:
	minikube start --driver=docker
	kubectl config use-context minikube
	kubectl create namespace argocd
	kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

stop_k8s:
	minikube stop