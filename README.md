# SRE-Test App

## Setup

1. **Terraform**:
    ```sh
    cd infra
    terraform init
    terraform apply
    ```

2. **Build Docker Image**:
    ```sh
    cd src
    docker build -t SRE-Test-app .
    ```

3. **Deploy to Kubernetes**:
    ```sh
    kubectl apply -f kubectl apply -f kubernetes/
    ```

## Observability
- Use tools like Prometheus and Grafana for monitoring.
- Implement logging using ELK stack or similar solutions.

