# Apache Setup via Ansible

## Steps
1. Add target server IP to `inventory`.
2. Place `index.html.j2` in `templates/`.
3. Run:

ansible-playbook -i inventory playbook.yml --extra-vars "title='My Site' heading='Hello' site_name='Example.com'"

# Apache Web Server Deployment with Ansible

This project automates the installation and configuration of Apache web server on remote Ubuntu/Debian systems using Ansible, including deployment of a customized index page.

## 📋 Prerequisites

- **Control Machine**: Ansible installed (v2.9+ recommended)
- **Target Server(s)**: Ubuntu/Debian Linux with:
  - SSH access (key-based authentication preferred)
  - Python 3 installed
- Required Ansible collections: (none for basic usage)

## 📂 File Structure
apache-deployment/
├── playbook.yml # Main Ansible playbook
├── inventory # Target server inventory
├── templates/
│ └── index.html.j2 # Jinja2 template for index.html
└── README.md # This documentation