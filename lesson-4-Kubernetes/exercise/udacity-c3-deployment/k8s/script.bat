:: Removing configuration maps
kubectl delete configmap env-config
:: Removing secrets
kubectl delete secret aws-secret
kubectl delete secret env-secret
:: Removing services
kubectl delete service backend-feed
kubectl delete service backend-user
kubectl delete service frontend
kubectl delete service reverseproxy
:: Removing deployments
kubectl delete deployment backend-feed
kubectl delete deployment backend-user
kubectl delete deployment frontend
kubectl delete deployment reverseproxy
:: Creating configuration map
kubectl apply -f env-configmap.yaml
:: Creating secrets
kubectl apply -f aws-secret.yaml
kubectl apply -f env-secret.yaml
:: Creating deployments
kubectl apply -f backend-feed-deployment.yaml
kubectl apply -f backend-user-deployment.yaml
kubectl apply -f frontend-deployment.yaml
kubectl apply -f reverseproxy-deployment.yaml
:: Creating services
kubectl apply -f backend-feed-service.yaml
kubectl apply -f backend-user-service.yaml
kubectl apply -f frontend-service.yaml
kubectl apply -f reverseproxy-service.yaml