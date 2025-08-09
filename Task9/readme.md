# Packer – Windows AMI with Python

## Overview
This project uses **HashiCorp Packer** to build a reusable **Windows Server 2019 AMI** on AWS, preconfigured with Python 3.11.

### Why use Packer?
- Consistent, repeatable machine images.
- Automates software installation.
- Ideal for dev/test/staging environments.

---

## Stages of the Build

### 1. **Builder Stage**
- **Type:** `amazon-ebs` – builds an AMI from an existing AWS EBS-backed image.
- **Base AMI:** Latest Windows Server 2019 from Amazon.
- **Instance type:** `t3.medium` for sufficient RAM/CPU.
- **User Data:** Enables WinRM for remote provisioning.

---

### 2. **Provisioner Stage**
- **Powershell Provisioner**:
  1. Downloads the Python installer.
  2. Installs Python silently with `InstallAllUsers=1 PrependPath=1`.
  3. Verifies installation with `python --version` and `pip --version`.

---

### 3. **Post-Build Stage**
- Stops the EC2 instance.
- Creates a new AMI (`windows-python-<timestamp>`).
- Outputs the AMI ID for later use.

---

## Usage

### 1. **Set AWS Credentials**
```bash
export AWS_ACCESS_KEY_ID="YOUR_KEY"
export AWS_SECRET_ACCESS_KEY="YOUR_SECRET"
