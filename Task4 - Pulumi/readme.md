# Topic 4: Introduction to Infrastructure as Code (IaC) and Tools

## 📝 Tasks

### 1. Terraform vs Pulumi Comparison (Hebrew)
A brief Hebrew document comparing Terraform and Pulumi – focusing on language support, syntax, use cases, and ecosystems.

### 2. Artifactory Setup for Org & Package Management
- Configure local/remote repositories for Docker, npm, Maven, etc.
- Assign user roles (admin, developer, deployer)
- Automate uploads via CI/CD pipeline (Jenkins/GitHub Actions)

### 3. Identify Vault & Consul Roles
- **Vault**: Secrets management (API keys, passwords, tokens)
- **Consul**: Service discovery and distributed configuration store (used to allow services to find each other securely)

---

## 📦 Deliverables

| File | Description |
|------|-------------|
| `comparison.md` | Hebrew comparison of Terraform vs Pulumi |
| `diagram.png` | Clear architecture diagram of a DevOps system using these tools |
| `README.md` | This file, explaining objectives and deliverables |

---

## 📌 Diagram Explanation – DevOps Architecture Using IaC Tools

See: [`diagram.png`](./diagram.png)

**Explanation of Components:**

- **Source Code Repo** (GitHub/GitLab): Contains your IaC code (Terraform or Pulumi)
- **CI/CD Pipeline** (e.g., Jenkins): Runs your Terraform or Pulumi scripts to deploy infrastructure
- **Terraform / Pulumi**: Tools used to provision and manage infrastructure
- **Artifactory**: Manages binaries and container images used in deployments
- **Vault**: Secures secrets needed by applications (API keys, passwords, etc.)
- **Consul**: Manages service discovery and configuration – helps services securely locate and connect with each other

---

## 🔁 When to Use Terraform vs Pulumi?

| Feature | Terraform | Pulumi |
|--------|-----------|--------|
| Language | HCL (declarative) | Python, TypeScript, Go, C# (imperative) |
| Learning Curve | Easy for ops teams | Easier for developers |
| Ecosystem | Very mature | Growing |
| Use Case | Cloud infrastructure provisioning | Dynamic logic-heavy infra automation |

---

## 🛠 Artifactory Setup Steps (Example)

1. Create a new **organization** or use an existing one
2. Create **local repositories**:
   - `docker-local`
   - `npm-local`
   - `maven-local`
3. Set **permissions** for users (read, write, deploy)
4. Integrate CI/CD:
   - Push built images/packages to Artifactory
   - Pull them from Artifactory in deployment stages

---

## 🔒 Vault & 🧭 Consul - Why They Matter

- **Vault** is used to **secure secrets**. No more hardcoding secrets into source code.
- **Consul** is used to **discover services** dynamically in complex cloud environments. Helps with service-to-service communication, load balancing, and configuration sharing.

