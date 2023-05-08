eval $(minikube --profile=whoami docker-env)
docker build -t whoami .
kubectl apply -f deployment.yml
kubectl apply -f service.yml