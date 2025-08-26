🚀 CI/CD Pipeline with GitHub Actions & Docker (No Cloud Needed)
📌 Objective
Set up a complete CI/CD pipeline that:

Builds a Docker image from the application code.
Runs tests inside the pipeline.
Pushes the image to Docker Hub.
Deploys and runs the container locally using Minikube or a local VM.
🛠 Tools & Technologies
GitHub Actions (CI/CD workflow automation)
Docker (Containerization)
Docker Hub (Image registry – free account)
Minikube / Local VM (Local deployment environment)
📖 Mini Guide
1️⃣ Write Docker Configuration
Create a Dockerfile for your application.
Create a docker-compose.yml (optional, for local multi-service setup).
2️⃣ Configure GitHub Actions
Add a workflow file under .github/workflows/ci-cd.yml.
Workflow should:
Run tests.
Build the Docker image.
Push the image to Docker Hub.
Example workflow step:

- name: Build and Push Docker Image
  run: |
    docker build -t ${{ secrets.DOCKER_USER }}/projectwork:latest .
    echo "${{ secrets.DOCKER_PASS }}" | docker login -u "${{ secrets.DOCKER_USER }}" --password-stdin
    docker push ${{ secrets.DOCKER_USER }}/projectwork:latest
