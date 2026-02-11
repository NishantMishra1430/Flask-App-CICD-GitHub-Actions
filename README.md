 
# Flask App with MySQL Docker Setup

This is a simple Flask app that interacts with a MySQL database. The app allows users to submit messages, which are then stored in the database and displayed on the frontend.

## Prerequisites

Before you begin, make sure you have the following installed:

- Docker
- Git (optional, for cloning the repository)

# 🚀 Flask-K8s Task Tracker

A full-stack, containerized web application built with **Flask** and **MySQL**, designed to run on a **Kubernetes (K3s)** cluster.

## 🛠️ Tech Stack
- **Backend:** Python (Flask)
- **Database:** MySQL 5.7
- **Orchestration:** Kubernetes (K3s)
- **Containerization:** Docker
- **Infrastructure:** Hetzner Cloud (Ubuntu)

## 🏗️ Architecture Features
- **StatefulSet:** Used for the MySQL database to ensure data persistence and stable network identity.
- **NodePort Service:** Configured on port `30001` to expose the Flask application to the public internet.
- **Persistent Volume (PVC):** Ensures that database records survive pod restarts or rescheduling.
- **DNS Discovery:** Internal service discovery allows the Flask app to communicate with MySQL using the service name.



## 🚀 Deployment Steps
1. **Apply Database:** `kubectl apply -f k8s/DB/`
2. **Apply Flask App:** `kubectl apply -f k8s/Services/`
3. **Access App:** Open browser at `http://your-server-ip:30001`

## ⚙️ Configuration
The application uses environment variables for database connectivity:
- `MYSQL_HOST`: Service name (`tt-mysql-svc`)
- `MYSQL_USER`: Database user
- `MYSQL_PASSWORD`: Securely managed credentials
```

## Notes

- Make sure to replace placeholders (e.g., `your_username`, `your_password`, `your_database`) with your actual MySQL configuration.

- This is a basic setup for demonstration purposes. In a production environment, you should follow best practices for security and performance.

- Be cautious when executing SQL queries directly. Validate and sanitize user inputs to prevent vulnerabilities like SQL injection.

- If you encounter issues, check Docker logs and error messages for troubleshooting.

```

