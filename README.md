Udacity Capstone Project

Introduction

This is a capstone project for the Cloud DevOps Engineer Nanodegree Program.The purpose of the project is for applying the skills and knowledge which were acquired throughout the  program. These include:

1. Using .circleci to implement Continuous Integration and Continuous Deployment
2. Building pipelines
3. Working with CloudFormation to deploy clusters
4. Building Docker containers in pipelines
5. Interacting with AWS-Eks
6. Building Kubernetes clusters using AWS EKS


Application

The Application is based on a simple Nginx “Hello World script using index.html to render a simple webpage in the user's browser. It uses the rolling update strategy to update the web app using .circleci to build, test and deploy the application.

Kubernetes Cluster

To create and deploy the kubernetes Cluster, I used  the Deployment object(deployment.yaml and service.yaml) and circleci/aws-eks Orbs template to create and deploy EKS- cluster. Deploying a simple hello-world html web application  to AWS EKS cluster.

How to Deploy the Infrastructure:Project steps

1. Set up the environment
2. Linting Dockerfile 
3. Building Docker containers in pipelines
4. Creates  CloudFormation to deploy clusters 
5. Create deployment.yml and service.yaml
6. Deploy the application in Amazon EKS
7. Test EKS cluster 
8. eksctl create cluster --name uda-capstone --region us-east-1 --fargate
9. aws eks --region us-east-1 update-kubeconfig --name uda-capstone
10. kubectl get nodes
11. kubectl get pods --all-namespaces
12. kubectl apply -f deployment.yml
13. kubectl get deployment






    