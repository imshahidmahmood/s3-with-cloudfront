# S3 with CloudFront Terraform Project

This project automates the creation of an Amazon S3 bucket, CloudFront distribution, and IAM user with the necessary permissions using Terraform.

## Features

This Terraform configuration performs the following tasks:

1. **Create S3 Bucket**: 
   - Creates an S3 bucket to store your files.

2. **Create CloudFront Distribution**: 
   - Sets up a CloudFront distribution and attaches it to the S3 bucket for content delivery.

3. **Create IAM User**: 
   - Creates an IAM user named after the S3 bucket and attaches a policy granting full access to the bucket.

4. **Create Access Keys**: 
   - Generates access keys for the IAM user so that files can be uploaded to the S3 bucket through the CloudFront distribution.

## Files Structure

- `cloudfront.tf`: Defines the CloudFront distribution configuration.
- `iam_user.tf`: Configures the IAM user and attaches the necessary policy.
- `outputs.tf`: Specifies output values that are returned after the infrastructure is created.
- `providers.tf`: Specifies the Terraform provider to use.
- `s3.tf`: Contains the configuration for creating the S3 bucket.
- `variables.tf`: Defines the variables used in the project.
- `terraform.tfvars`: Stores the values of the variables.
- `.terraform/`: Directory for Terraform's state and backup files.

## Prerequisites

- Terraform installed on your machine.
- AWS credentials configured on your machine.

## Usage

1. Clone the repository:

   git clone <repository-url>

2. Navigate to the project directory:

   cd S3-WITH-CLOUDFRONT

3. Initialize Terraform:

   terraform init

4. Review the plan:

   terraform plan

5. Apply the Terraform configuration:

   terraform apply

After successful deployment, the outputs will provide the necessary information such as the S3 bucket name, CloudFront distribution URL, and IAM user credentials.


