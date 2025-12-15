# 🌐 COBL-002 – Multi-Region Support Implementation

This repository implements **COBL-002 – AWS Cloud Operations Competency: Multi-Region Support** using **AWS S3, IAM, CloudWatch, Terraform**, and **GitHub Actions**.  
The solution demonstrates **cross-region S3 replication, operational resilience, governance, and disaster recovery readiness**.

---

## ⚙️ Prerequisites

Ensure the following are available before implementation:

- AWS Account with CloudOps permissions
- Two AWS Regions selected (e.g., `us-east-1` as primary, `us-west-2` as secondary)
- AWS CLI installed and configured
- Terraform installed
- GitHub Repository
- S3 Buckets in both regions for replication
- IAM User with required permissions to create roles, policies, and CRR

---

## 🔐 Required GitHub Secrets

Create an IAM user in AWS and generate access keys.  
Add the following secrets to your GitHub repository:

**Path:**  
`GitHub → Repository Settings → Secrets & Variables → Actions → New Repository Secret`

| Secret Name             | Description                              |
|-------------------------|------------------------------------------|
| `AWS_ACCESS_KEY_ID`     | IAM user access key                       |
| `AWS_SECRET_ACCESS_KEY` | IAM user secret key                       |

---

## 📁 Project Structure

```text
cobl-002-multi-region-support/
├── .github/
│   └── workflows/
│       └── deploy.yml
├── terraform/
│   ├── backend.tf
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
├── scripts/
│   └── replication-validation.py
└── README.md

Implementation of COBL-002 Multi-Region Support: Primary & Secondary Region S3 Setup, Cross-Region Replication, Monitoring, Governance, and DR readiness.

