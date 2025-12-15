# COBL-002 – Multi-Region Support

## Project Overview
This project implements AWS multi-region S3 support using Terraform as part of COBL-002 compliance.

## Terraform Implementation

- **Primary Bucket:** `cobl-002-primary-asha1` (us-east-1)
- **Secondary Bucket:** `cobl-002-secondary-asha1` (us-west-2)
- **IAM Role:** `cobl-002-s3-replication-role` for cross-region replication
- **Cross-Region Replication (CRR):** Configured from primary → secondary

## Testing Steps

1. Uploaded `testfile_10rows.csv` to the primary bucket.
2. Verified replication in the secondary bucket.
3. Checked metadata and version IDs to ensure consistency.
4. Versioning enabled on both buckets.

## How to Deploy

1. Navigate to the `terraform` folder:

   ```powershell
   cd terraform
2. Initialize Terraform:

  ```powershell
  terraform init
3. Plan the deployment:

```powershell
terraform plan


4. Apply the deployment:
  ```powershell
  terraform apply


Type yes when prompted.

## How to Test

Upload a CSV or test file to the primary bucket:

aws s3 cp "C:\path\to\file.csv" s3://cobl-002-primary-asha1/


Check replication in the secondary bucket:

aws s3 ls s3://cobl-002-secondary-asha1/


Confirm versioning and metadata:

aws s3api list-object-versions --bucket cobl-002-primary-asha1 --prefix file.csv
aws s3api list-object-versions --bucket cobl-002-secondary-asha1 --prefix file.csv

Notes

Terraform versioning argument is deprecated, but works.

Ensure AWS credentials are configured before running Terraform.
