# Who Am I

Simple microservice return it's pod ID.

## Requirements

```
Python 3.8.10
Poetry 1.4.2
Docker 23.0.5
Kubectl 5.0.1
Minikube 1.30.1
Helm 3.11.3
```

_Note: Please verify and update documents if you use other package versions._

## Setup

### Create Minikube cluster

```
minikube start --profile=whoami --namespace=whoami --memory=1900 --cpus=2
kubectl create namespace whoami
```

### Deploy to Minikube

```
sh ./deploy.sh
```

`deploy.sh` export `docker-env` of Minikube so Docker will know how to build image in Minikube cluster. Then, it build new image name `whoami` using `Dockerfile` and deploy it to cluster using `deployment.yml` manifests. Then, it create load balancer service on port 8000 in cluster using `service.yml`. Finally, it create tunnel to Minikube cluster.

### Cleanup

```
sh ./cleanup.sh
```
