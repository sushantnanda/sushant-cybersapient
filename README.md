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

## 📂 Project Structure

cybersapient-devops-task/
├── app/                           # Node.js app
│   ├── index.js
│   ├── package.json
│   └── Dockerfile
├── helm/                          # Helm chart
│   ├── Chart.yaml
│   ├── values.yaml
│   ├── templates/
│   │   └── deployment.yaml
│   │   └── service.yaml
├── infra/                         # Terraform
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── providers.tf
├── azure-pipelines.yml            # Azure DevOps pipeline
├── README.md
└── diagram.png                    # Architecture diagram
