# Deployment Guide

## Prerequisites

- Docker and Docker Compose
- GitHub CLI (`gh`)
- Python 3.9+ or Node.js 16+
- AWS account (if deploying to AWS)
- Environment variables configured

---

## Local Development

### Setup

```bash
# Clone repository
git clone https://github.com/mdjahid11978-design/[REPO].git
cd [REPO]

# Create environment file
cp .env.example .env
# Edit .env with your configuration

# Install dependencies
pip install -r requirements.txt  # Python
npm install                      # Node.js

# Run locally
python main.py
npm run dev
```

---

## Docker Deployment

### Build Image

```bash
docker build -t jahid/[project]:[version] .
```

### Run Container

```bash
docker run -d \
  --name jahid-[project] \
  -e OPENAI_API_KEY=$OPENAI_API_KEY \
  -p 8000:8000 \
  jahid/[project]:[version]
```

### Docker Compose

```bash
docker-compose up -d
```

---

## AWS Deployment

### ECS Fargate

```bash
# Build and push to ECR
aws ecr create-repository --repository-name jahid-[project]
aws ecr get-login-password | docker login --username AWS --password-stdin [account].dkr.ecr.[region].amazonaws.com
docker tag jahid/[project] [account].dkr.ecr.[region].amazonaws.com/jahid-[project]
docker push [account].dkr.ecr.[region].amazonaws.com/jahid-[project]
```

### Create ECS Service

```bash
# Update task definition, create service, configure load balancer
# See AWS ECS documentation for full setup
```

---

## Kubernetes Deployment

### Prerequisites

```bash
kubectl cluster-info
kubectl get nodes
```

### Deploy

```bash
kubectl apply -f k8s/namespace.yaml
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
kubectl apply -f k8s/ingress.yaml
```

### Monitor

```bash
kubectl get pods -n jahid
kubectl logs -f deployment/[project] -n jahid
kubectl describe pod [pod-name] -n jahid
```

---

## Environment Configuration

### Required Variables

```bash
OPENAI_API_KEY=sk-...
ANTHROPIC_API_KEY=sk-ant-...
DATABASE_URL=postgresql://user:pass@localhost:5432/db
REDIS_URL=redis://localhost:6379
SECRET_KEY=your-secret-key
ALLOWED_HOSTS=localhost,127.0.0.1,yourdomain.com
```

---

## Monitoring & Logs

### Local

```bash
tail -f logs/app.log
```

### CloudWatch (AWS)

```bash
aws logs tail /ecs/jahid-[project] --follow
```

### Datadog/New Relic

Configure via environment variables and provider dashboard.

---

## Scaling

### Auto-scaling (Kubernetes)

```bash
kubectl autoscale deployment [project] --min=2 --max=10 --cpu-percent=80
```

### Load Balancing

Configure via AWS ELB/ALB or Kubernetes Ingress.

---

## Backups

### Database

```bash
pg_dump -U user dbname > backup.sql
# Or use AWS RDS automated backups
```

### Configuration

Store in git (encrypted) or AWS Secrets Manager.

---

## Troubleshooting

### Common Issues

1. **Port already in use:** `lsof -i :8000 | kill -9 <PID>`
2. **Database connection:** Check `DATABASE_URL` and network
3. **Missing dependencies:** `pip install -r requirements.txt`
4. **Permission errors:** Check file permissions and Docker user

---

For detailed support: [mdjahid11978@outlook.com](mailto:mdjahid11978@outlook.com)