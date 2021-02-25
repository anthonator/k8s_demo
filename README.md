# k8s

Simple application for demonstrating deploying and managing an Elixir
application using Kubernetes.

## Running the application using Docker Compose

```
$> docker-compose up
```

Application will be accessible at `http://localhost:4000`

## Building the Docker image

```
$> docker build . -f ./docker/Dockerfile -t k8s
```

## Deploying application using Kubernetes manifests

```
$> kubectl create namespace k8s-demo
$> kubectl apply -f ./k8s
```

Application will be accessible at `http://localhost`

## Deploying application using Helm chart

```
$> helm install \
  --create-namespace \
  --namespace k8s-demo \
  -f ./.helm/values/demo.yaml \
  k8s-demo ./.helm
```

Application will be accessible at `http://localhost`

## Undeploy application

```
kubectl delete namespace k8s-demo
```
