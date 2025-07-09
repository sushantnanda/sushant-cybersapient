# 🚀 CyberSapient DevOps Task

## 🌐 Overview

This is a simple Node.js app deployed to Azure Kubernetes Service using CI/CD, Terraform, Helm, and Azure DevOps.

## 📦 Tech Stack

- Azure Kubernetes Service (AKS)
- Azure Container Registry (ACR)
- Terraform (infra as code)
- Helm (K8s deployment)
- Azure DevOps Pipelines (CI/CD)
- Node.js + Express


✅ Deployment Flow
* Infrastructure is provisioned using Terraform.
* App is built using Docker and pushed to ACR.
* Helm chart deploys the image to AKS.
* CI/CD pipeline ensures automatic rollout and redeploy.


cybersapient-devops-task/
├── app/                          # Node.js application
│   ├── index.js
│   ├── package.json
│   └── Dockerfile
├── helm/                         # Helm chart for deployment
│   ├── Chart.yaml
│   ├── values.yaml
│   └── templates/
│       ├── deployment.yaml
│       └── service.yaml
├── infra/                        # Terraform configs
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── providers.tf
├── azure-pipelines.yml           # Azure DevOps pipeline
├── diagram.png                   # Architecture diagram
└── README.md                     # This file


Architecture Diagram
![architecture_cybersapient](https://github.com/user-attachments/assets/46436250-9baa-4672-86a6-86de436d3f6b)

📹 Walkthrough (Loom)
Link : 
