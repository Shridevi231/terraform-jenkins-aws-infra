# Terraform + Jenkins AWS Infrastructure Automation

This project demonstrates end-to-end **Infrastructure as Code (IaC)** automation using **Terraform**, **Jenkins**, **AWS**, and **GitHub**.

The goal of this project is to provision and destroy AWS infrastructure using Terraform, triggered through a Jenkins CI/CD pipeline with manual approval.

---

## 🧰 Tools & Technologies Used

- **AWS (Free Tier)**
  - EC2
  - VPC
  - Subnets
  - Internet Gateway
  - Route Tables
- **Terraform**
- **Jenkins**
- **Git & GitHub**
- **Linux (Amazon Linux 2023)**

---

## 🏗️ Architecture Overview

- Jenkins runs on a dedicated EC2 instance.
- Terraform code is stored in GitHub.
- Jenkins pulls the code from GitHub and executes Terraform commands.
- AWS infrastructure is created and destroyed using Terraform.
- AWS access is provided using an **IAM Role** attached to the EC2 instance (no access keys).

---

## ⚙️ Terraform Resources Created

- Custom VPC
- 2 Public Subnets
- Internet Gateway
- Route Table and Associations
- EC2 Instance (Free Tier – t2.micro)

---

## 🚀 Jenkins Pipeline Features

- Pipeline defined using **Jenkinsfile**
- Parameterized build:
  - `apply` → create infrastructure
  - `destroy` → delete infrastructure
- Pipeline stages:
  1. Checkout source code
  2. Terraform init
  3. Terraform plan
  4. Manual approval (for apply)
  5. Apply / Destroy infrastructure

---

## 🔐 AWS Authentication

- Uses **IAM Role attached to EC2**
- No AWS access keys stored in Jenkins or code
- Secure and production-recommended approach

---


