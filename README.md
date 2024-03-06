# DevOps Orchestration assessment

The repo containes:
- Backend Api dummy application
- Data Api dummy application
- Health check dummy script

## Objective:
Update the backend and orchestrate migrating the 2 apps and script to kubernetes clusters following best practices using the technologies in the instructions.

### Tasks:
- Add a new backend api endpoint:
  - ```/download_external_logs``` makes a call to external service's api.
  - The external download API is dummy api, _you may leave it blank,_ however it requires $EXTERNAL_INTEGRATION_KEY to authenticate.
  - the external api has multiple environments so the integration key varies by environment.
- Update the health check to fit the new architecture.
- Create helmchart for the stack.
- Deployment via Ansible.

#### Submission Guidelines:
- Add the necessary folder(s) and file(s).
- If needed you may change the code structure or content or add technologirs, but its **not** a part of the assessment.
- Ensure you include the necessary documentations.
- Use git
- Good luck
