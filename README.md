
<h1>ABN AMRO SRE CASE STUDY</h1>

<p>Project depend on AWS Infrastructure and the assumption of having 3 Container repositories for 2 applications and helm chart. Deployment of the insfrastructure handled with a basic basic usage of terraform( Network infrastructure creation skipped to simplfy the case study, feel free to use any subnets that you have in your account ). Deployment of the main application automated with the ansbible using bastion hosts.(You can use any bastion host which has direct access to the Kubernetes cluster control plane and don't forget to change the ansible inventory).For the build action of the flask applications , github actions used and new version of the flask applications are pushed to the ECR services on AWS. Same operation is also handled for the helm charts as artificats and hold on the ECR repository assigned for it.
</p>

<h2>Technologies Used</h2>
<div align="center">
  <img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white" alt="GitHub">
  <img src="https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white" alt="Docker">
  <img src="https://img.shields.io/badge/Kubernetes-326CE5?style=for-the-badge&logo=kubernetes&logoColor=white" alt="Kubernetes">
  <img src="https://img.shields.io/badge/Ansible-EE0000?style=for-the-badge&logo=ansible&logoColor=white" alt="Ansible">
  <img src="https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white" alt="Python">
  <img src="https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white" alt="Git">
  <img src="https://img.shields.io/badge/Helm-277A9F?style=for-the-badge&logo=helm&logoColor=white" alt="Helm">
  <img src="https://img.shields.io/badge/Bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white" alt="Bash">
</div>


<h2>Getting Started</h2>

<p>These instructions will help you set up and run the project on AWS cloud environment.</p>

<h3>Prerequisites</h3>

<p>Before you begin, ensure you have met the following requirements:</p>

  <ul>
        <li>Terraform</li>
        <li>Ansible</li>
        <li>Python</li>
        <li>Git</li>
        <li>Helm</li>
        <li>Docker</li>
        <li>Kubernetes cluster configured</li>
  </ul>

<h3>Installation</h3>

  <ol>
        <li>Clone the repository:</li>

  </ol>

  <pre><code>git clone git clone https://github.com/yamansener199/ABN-AMRO-SRE-CASE.git
  ABN-AMRO-SRE-CASE
  </code></pre>

  <ol start="2">
        <li>Deploy the Terraform infrastructure:</li>
        <li>Create 3 ECR Repository by using AWS GUI (don't forget to give the same name of the helm chart for the chart Registry):</li>
  </ol>

  <pre><code>cd terraform
    terraform init
    terraform plan
    terraform apply
</code></pre>

  <ol start="3">
        <li>Configure the Terraform infrastructure using bash scripts: /flask-apps/EBSCSIDriver.sh and flask-apps/hpa-create.sh</li>
  </ol>

    <pre><code>./configure_infrastructure.sh
</code></pre>
    <ol start="4">
        <li>Configure the ansible bastion bost for your use case which has access to control plane</li>
        <li>Change your ssh private key in the ansible.cfg and also for the user</li>
        <li>Execute Ansible playbook:</li>
    </ol>
    <pre><code>ansible-playbook -i demo-inventory helm-deploy-playbook.yml
</code></pre>

<h2>Contributing</h2>

  <p>Contributions are welcome! Please feel free to submit a pull request or open an issue for discussion.</p>

  <h2>License</h2>
  <p>This project is licensed under the [MIT] - see the LICENSE file for details.</p>
