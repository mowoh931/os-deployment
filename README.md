Deploying simple spring boot application to k8 locally using minikube.

                        Steps
================================================================
1 Build docker & tag image: docker build -t mowoh/os-deployment .
2 Run app locally: docker run -p 9090:9090 mowoh/os-deployment
3 Push to image docker hub: docker push mowoh/os-deployment
4 Start minikube: minikube start
5 Open minikube dashboard: minikube dashboard
6 Deploy application: kubectl apply -f deployment.yaml
7 Get the service url : minikube service os-deployment-service --url
