# ABN AMRO SRE CASE STUDY

## Technologies Used

![GitHub Actions](https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png)
![Docker](https://www.docker.com/sites/default/files/d8/2019-07/Moby-logo.png)
![Kubernetes](https://upload.wikimedia.org/wikipedia/commons/thumb/3/39/Kubernetes_logo_without_workmark.svg/1200px-Kubernetes_logo_without_workmark.svg.png)
![Ansible](https://www.ansible.com/hubfs/2017_Images/Assets/Ansible-Mark-RGB_Pool.svg)
![Python](https://www.python.org/static/img/python-logo.png)
![Git](https://git-scm.com/images/logos/downloads/Git-Logo-2Color.png)
![Helm](https://helm.sh/img/helm.svg)
![Bash](https://upload.wikimedia.org/wikipedia/commons/8/82/Gnu-bash-logo.svg)

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