# Site-Reliability-Engineer
# My Application

## Setup

1. **Terraform**:
    ```sh
    cd terraform
    terraform init
    terraform apply
    ```

2. **Build Docker Image**:
    ```sh
    cd app
    docker build -t my-app .
    ```

3. **Deploy to Kubernetes**:
    ```sh
    kubectl apply -f kubernetes/
    ```

## Observability
- Use tools like Prometheus and Grafana for monitoring.
- Implement logging using ELK stack or similar solutions.
