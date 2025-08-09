
Pipeline Documentation (pipeline.md)
Overview
This Azure DevOps pipeline builds, tests, pushes, and deploys the weather-app container.
It supports both dev and prod environments, with manual approval for production.

Stages
Verify_Docker

Checks if Docker is installed and functional.

Clean

Removes old containers, images, volumes, and networks.

Pylint

Creates a Python virtual environment, installs dependencies, runs pylint with a fail threshold.

Build

Builds the Docker image and runs it locally for quick verification.

Test_Availability

Verifies if the containerized app is accessible via HTTP.

Push_To_DockerHub

Pushes the image to DockerHub using a secure service connection.

Deploy

Only runs in prod mode.

SSH into the production server and pulls the latest image, restarts the service.

Triggers
Continuous Integration: Runs on push to main.

Pull Requests: Runs on PRs targeting main.

Approval: Before deploying to prod, manual approval in Azure DevOps Environments is required.

Runtime Parameters
environment: Choose between:

dev: Skip deployment stage.

prod: Deploy with approval.

Service Connections Required
DockerHub Service Connection → Push image to DockerHub.

SSH Service Connection → Connect to the production server.

Execution Flow
Push or PR triggers pipeline.

Run verification, cleanup, lint, build, and availability test.

Push image to DockerHub.

If prod:

Wait for manual approval.

Deploy to production server via SSH.