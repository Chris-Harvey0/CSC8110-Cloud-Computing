# CSC8110-Cloud-Computing
## Overview
The main goal of this project was to deply a Docker-based application hosting environment, as well as programming and deploying cloud infrastructure using Terraform.
## Task 1
For the first task a total of five images needed to be pulled from Docker hub.
A docker_compose.yml file was then defined to run each of these images.
Each image needed its own configuration to work as well as a port mapped to it for communication.
For the Locust image two services were defined; one to host the web front end and one to simulate the worker nodes for load testing.
This docker_compose.yml configuration was then deployed onto a Docker swarm.
## Task 2
For this task the [cadvisor scraper Java program](https://github.com/ncl-iot-team/cadvisor-scraper) was downloaded.
This program makes use of the cadvisor instance to get performance statistics of one of the Docker containers.
This needed to be modified slightly to work with the Docker swarm being used.
So modifications were made and then this Java program was made into a Docker image and pushed to my repository on Docker hub.
## Task 3
The Java program downloaded in task two was designed to monitor one service.
This needed to be changed so that all of the services in the Docker swarm could be monitored.
For this I created a shell script that would run the Docker image of this Java program for each Docker service that needed to be monitored.
This was verified to be working by checking the MongoDB database that the Java program was logging data to and seeing that there was performance metrics for each of the six Docker services.
## Task 4
For this task a microservice needed to be deployed onto an Azure Kubernetes Service using Terraform.
This required the creation of two Terraform files.
The first one (main.tf) handled the creation of the resource group and the cluster.
The second Terraform file (outputs.tf) outputted the Kubernetes cluster configuration into a file.
This file could then be referenced by commands to get information about the cluster.

Once this was complete a microservice needed to be deployed onto the cluster.
For this the [Hello Kubernetes Docker image](https://hub.docker.com/r/paulbouwer/hello-kubernetes/) was used.
This was deployed onto the cluster by running a deplyment.yml file using Terraform.
Once this was deployed I forwarded the port to my machine and checked to see that the web front end was working as intended.
## Reflection
This project gave me experience in cloud computing which is an area of computing I had not made a project in before.
It allowed me to build on my knowledge of Docker which I had used previously in my [Internet of Things project](https://github.com/Chris-Harvey0/CSC8112-Internet-of-Things).
I had not used Azure Kubernetes Services or Terraform previously and found these tools took some getting used to.
The main issue I encountered was with giving Terraform the correct permissions to create clusters on Azure.
I explored the possible options that could be used and the differences between system assigned and user assigned managed identities.
I decided that system assigned would be the simpler solution and implemented this.
In future projects I would like to make more use of cloud as this was a relatively simple introduction to cloud computing.
