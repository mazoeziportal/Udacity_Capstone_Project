Udacity Capstone Project

Introduction

This is a capstone project for the Cloud DevOps Engineer Nanodegree Program.The purpose of the project is for applying the skills and knowledge which were acquired throughout the  program. These include:

Using .circleci to implement Continuous Integration and Continuous Deployment
Building pipelines
Working with CloudFormation to deploy clusters
Building Kubernetes clusters
Building Docker containers in pipelines
Interacting with AWS-Eks
Building Kubernetes clusters using AWS EKS
Using .

Application

The Application is based on a simple Nginx “Hello World script using index.html to render a simple webpage in the user's browser. it uses the rolling update strategy to update the web app using .circleci to build, test and deploy the application.

Kubernetes Cluster

To create and deploy the kubernetes Cluster, I used  the Deployment object(deployment.yaml and service.yaml) and circleci/aws-eks Orbs template to create and deploy EKS- cluster. Deploying a simple hello-world html web application  to AWS EKS cluster.

How to Deploy the Infrastructure:Project steps

Set up the environment
Linting Dockerfile 
Building Docker containers in pipelines
Creates  CloudFormation to deploy clusters 
Create deployment.yml and service.yaml
Deploy the application in Amazon EKS
Test EKS cluster 
eksctl create cluster --name uda-capstone --region us-east-1 --fargate
aws eks --region us-east-1 update-kubeconfig --name uda-capstone
kubectl get nodes
kubectl get pods --all-namespaces
kubectl apply -f deployment.yml
kubectl get deployment






    