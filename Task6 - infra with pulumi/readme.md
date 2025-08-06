# Pulumi AWS EC2 Deployment

## 📦 What This Project Does

This Pulumi project:

- Creates an EC2 instance (`t3.large`) in AWS
- Automatically finds the latest Amazon Linux 2 AMI
- Uses an existing EC2 key pair (`my-key`) for SSH access
- Opens port 22 for SSH access
- Outputs the instance's public IP and DNS for quick access

## ⚙️ Setup & Deployment

### 1. Install dependencies

pip install pulumi pulumi-aws

### 2. Configure Pulumi

pulumi login
pulumi stack init dev
pulumi config set aws:region us-east-1
pulumi config set key_name my-key
Replace my-key with your actual EC2 key pair name

### 3. Deploy
pulumi up

### 4. Cleanup
pulumi destroy