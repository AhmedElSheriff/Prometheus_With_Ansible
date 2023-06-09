# Working with Ansible Roles
where I leveraged Infrastructure as Code (IAC) using Terraform, Ansible Roles, and Bash Scripting to provision a streamlined AWS Infrastructure. The project entailed deploying Prometheus with Alert Manager and EC2 Service Discovery, alongside the installation of a Grafana dashboard

## The AWS Infrastructure components included:
* VPC
* Public Subnet
* Internet Gateway
* Route Table
* Two EC2 Instances with Ubuntu AMI
* Security Group to enable Prometheus, Node Exporter, Alert Manager, and Grafana

To streamline the deployment process, I broke down the installation of monitoring resources into distinct Ansible Roles

## Ansible Rules:
* Prometheus
* Alert Manager
* Node Exporter
* Grafana

For seamless integration, I automated the population of the Playbook inventory file using __AWS CLI__, distributing the instances into two hosts. 

To enhance security, I ensured that the metrics collected by Node Exporter were protected using __TLS__ certificates and __basic authentication__. This ensured the confidentiality and integrity of the data transmitted.

Moreover, to safeguard sensitive information, I employed __Ansible Vault__ to encrypt the __IAM Programmatic Access keys and secrets__. This fortified the system against unauthorized access and protected the credentials.

