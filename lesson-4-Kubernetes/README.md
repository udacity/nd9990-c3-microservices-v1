## Lesson 4 - Kubernetes
The exercises in this lesson are an extension of the exercises you have already done in the previous lesson - **"Containers"**.  We will use the same "Udagram" project, learn to manage the microservices running in separate containers using Kubernetes cluster. 

## Exercise Instructions
First, you need to watch the CDND - C3 - Lesson 4 - Kubernetes to understand the concepts. Then follow below instructions:

### Instruction 1 - Clone the GitHub repo (if not already)
Create a project folder in your local computer and clone the following Git repository - https://github.com/udacity/nd990-c3-microservices-v1

To start with, go to the */lesson-4-Kubernetes/exercise/* directory. You would find the following sub-directories for each component of the project, as follows:
1. *udacity-c3-frontend* - For Ionic client web application, which consumes the RestAPI Backend
2. *udacity-c3-restapi-feed* - For "feed" microservice
3. *udacity-c3-restapi-user* - For "user" microservice
4. *udacity-c3-deployment/docker* - For running the Nginx as a reverse-proxy server


### Instruction 2 - Create configuration files (`.yaml`) 
Create a sub-directory with the name “k8s” (acronym for Kubernetes) at the path *lesson-4-Kubernetes/exercise/udacity-c3-deployment/*. Create the following configuration files:
>* udacity-c3-deployment/k8s/reverseproxy-deployment.yaml
>* udacity-c3-deployment/k8s/frontend-deployment.yaml
>* udacity-c3-deployment/k8s/backend-user-deployment.yaml
>* udacity-c3-deployment/k8s/backend-feed-deployment.yaml
>* udacity-c3-deployment/k8s/pod-example/pod.yaml

Start - /lesson-4-Kubernetes/exercise/ directory

#### Solution 
If you need help, you may refer to the **solution** available at */lesson-4-Kubernetes/solution/* directory

### Instruction 3 - Create Docker Images
Create Docker images for all the services of your Udagram application.

### Instruction 4 - Deploy Kubernetes Cluster
First, set up a Kubernetes cluster with KubeOne. Second, deploy a pod and convert our pods into deployments. Use Kubernetes for the deployment. To achieve the above objectives, you need to execute the following task in order:
* Create your first Kubernetes cluster on AWS with KubeOne [https://github.com/kubermatic/kubeone/blob/master/docs/quickstart-aws.md](https://github.com/kubermatic/kubeone/blob/master/docs/quickstart-aws.md)
* Create a pod each for the feed, user, and frontend service
* Convert the pod into a deployment
* Deploy your Udagram microservices application in a Kubernetes Cluster 
