# Exercise: Zero-Downtime Deployments & Health Probes in Kubernetes

## Objective
Design and deploy a resilient Kubernetes `Deployment` that implements strict health checks (liveness and readiness probes) and a controlled rolling update strategy to ensure zero packet loss during continuous deployment cycles.

## Background & Scenario
In modern orchestration systems, application crashes, memory leaks, and new code releases happen dynamically. If Kubernetes routes traffic to a container that is still initializing its database connections or has entered a deadlock state, clients will experience dropped requests and 5xx errors. 

To prevent this, you must configure **Readiness Probes** (to control when a pod can receive traffic) and **Liveness Probes** (to detect unrecoverable failures and trigger automated container restarts), coupled with a tuned **RollingUpdate** strategy.

## Architecture Diagram

Client Request
│
▼
┌──────────────┐      ┌────────────────────────────────────────────────────────┐
│ Kubernetes   │ ───> │ Pod (Running & Ready)                                  │
│ Service      │      │  - Readiness Probe: HTTP GET /healthz (Status 200 OK)  │
│ (Load Balancer)│    │  - Liveness Probe:  HTTP GET /healthz (Status 200 OK)  │
└──────────────┘      └────────────────────────────────────────────────────────┘

## Requirements

### 1. Deployment & Replica Specification
- Create a Kubernetes `Deployment` manifest utilizing a lightweight container image (e.g., `nginx:alpine` or a custom microservice).
- Set `replicas: 3` to ensure high availability across the replica set.

### 2. Health Probes Configuration
- **Readiness Probe:**
  - Configure an HTTP GET request to an endpoint (e.g., `/` or `/healthz`).
  - Set appropriate timing parameters (`initialDelaySeconds`, `periodSeconds`, `failureThreshold`) so traffic is withheld until the application is fully warmed up.
- **Liveness Probe:**
  - Configure an HTTP GET request to detect deadlocks or frozen processes.
  - Set parameters to ensure Kubernetes restarts the container only after consecutive verification failures.

### 3. Rolling Update Strategy (`strategy.type: RollingUpdate`)
- Explicitly configure the deployment strategy.
- Set `maxSurge` and `maxUnavailable` parameters to control how many pods can be created above the desired number and how many can be unavailable during the update process.

### 4. Verification & Acceptance Criteria
- [ ] Deploy the manifest using `kubectl apply -f`.
- [ ] Verify that pods transition to a `Ready` state only after probe checks pass (`kubectl get pods`).
- [ ] Trigger a rolling update by changing the container image version and verify zero downtime using a continuous `curl` loop against the service endpoint.
- [ ] Inspect pod description (`kubectl describe pod`) to verify probe configurations and event history.

## Official Documentation References
- [Kubernetes Deployments Guide](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/)
- [Configure Liveness, Readiness and Startup Probes](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/)
- [Kubernetes Rolling Update Strategy Documentation](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/#rolling-update-deployment)
