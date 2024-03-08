# ABN AMRO SRE CASE STUDY

## Technologies Used

[![GitHub Actions](https://img.shields.io/badge/GitHub%20Actions-Workflow-2088FF?logo=github-actions)](https://github.com/features/actions)
[![Docker](https://img.shields.io/badge/Docker-Container-2496ED?logo=docker)](https://www.docker.com/)
[![Kubernetes](https://img.shields.io/badge/Kubernetes-Cluster-326CE5?logo=kubernetes)](https://kubernetes.io/)
[![Ansible](https://img.shields.io/badge/Ansible-Automation-EE0000?logo=ansible)](https://www.ansible.com/)
[![Python](https://img.shields.io/badge/Python-Scripting-3776AB?logo=python)](https://www.python.org/)
[![Git](https://img.shields.io/badge/Git-Version%20Control-F05032?logo=git)](https://git-scm.com/)
[![Helm](https://img.shields.io/badge/Helm-Deploy%20Charts-277A9F?logo=helm)](https://helm.sh/)
[![Bash](https://img.shields.io/badge/Bash-Scripting-4EAA25?logo=gnu-bash)](https://www.gnu.org/software/bash/)
[![GitHub Actions Status](https://img.shields.io/github/workflow/status/yamansener199/ABN-AMRO-SRE-CASE/deploy.yml?label=GitHub%20Actions&logo=github)](https://github.com/yamansener199/ABN-AMRO-SRE-CASE/actions)



## Explanation of the Main Components

Project depend on AWS Infrastructure and the assumption of having 3 Container repositories for 2 applications and helm chart. Deployment of the insfrastructure handled with a basic basic usage of terraform( Network infrastructure creation skipped to simplfy the case study, feel free to use any subnets that you have in your account ). Deployment of the main application automated with the ansbible using bastion hosts.(You can use any bastion host which has direct access to the Kubernetes cluster control plane and don't forget to change the ansible inventory).For the build action of the flask applications , github actions used and new version of the flask applications are pushed to the ECR services on AWS. Same operation is also handled for the helm charts as artificats and hold on the ECR repository assigned for it.

### Prerequisites

Before you begin, ensure you have met the following requirements:

- Terraform
- Ansible
- Python
- Git
- Helm
- Docker
- Kubernetes cluster configured

### Installation

1. Clone the repository: