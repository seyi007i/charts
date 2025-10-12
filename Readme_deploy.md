# Deployment Guide

This project contains the following key files for deployment:

## 1. `.github/workflows/prod.yaml`
GitHub Actions workflow for CI/CD to production.

- **Triggers:** Runs on push to the `main` branch.
- **Jobs:**
    - **Build:** Checks out code, sets up Docker Buildx, and builds the Docker image.
    
    - **Deploy:** Pushes the Docker image to a registry and deploys to the production environment (e.g., via SSH, cloud provider, or container platform).
- **Secrets:** Uses repository secrets for authentication (e.g., DockerHub credentials, deployment keys).
- Located at `.github/workflows/prod.yaml`.

## 2. `index.html`
Main entry point for the web application.

- Place your frontend code here.
- Located at `index.html`.

## 3. `docker-compose.yaml`
Defines multi-container Docker applications.

- Specifies services, networks, and volumes.
- Located at `docker-compose.yaml`.

## 4. `Dockerfile`
Builds the application image.

- Contains instructions to package the app.
- Located at `Dockerfile`.

---

## Quick Start

1. **Clone the repository**
        ```sh
        git clone <your-repo-url>
        cd <project-directory>
        ```

2. **Build and run with Docker Compose**
        ```sh
        docker-compose up --build
        ```

3. **Access the application**
        - Open your browser and go to `http://localhost:<port>`.

---

## CI/CD Pipeline

- On push to `main`, the workflow in `.github/workflows/prod.yaml` will:
    - **Build:** Create the Docker image using the Dockerfile.
    
    - **Deploy:** Push the image to a container registry and deploy to production using configured secrets and deployment steps.

---

## File Overview

| File/Folder                  | Purpose                                  |
|------------------------------|------------------------------------------|
| `.github/workflows/prod.yaml`| CI/CD pipeline configuration             |
| `index.html`                 | Web application frontend                 |
| `docker-compose.yaml`        | Multi-container orchestration            |
| `Dockerfile`                 | Container image build instructions       |

---

## License

See `LICENSE` file for details.
