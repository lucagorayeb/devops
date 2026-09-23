# Exercise: Production-Grade Reverse Proxy & TLS Termination with NGINX

## Objective
Design and deploy a containerized reverse proxy with SSL/TLS termination and load balancing. You will connect the concepts from your networking, SSL/TLS, and NGINX notes into a production-like local infrastructure setup.

## Background & Scenario
In production microservice architectures, application containers should not directly handle public TLS handshakes, certificate management, or raw client traffic. Doing so creates operational overhead, couples business logic with cryptographic protocols, and prevents effective horizontal scaling. Instead, a dedicated reverse proxy (NGINX) sits at the boundary of your network, terminates TLS, enforces security headers, and routes traffic across upstream application replicas.

## Architecture Diagram
```
Client (curl / browser)
       │
       ▼ [Ports 80 & 443]
┌─────────────────────────────────────────────────────────────┐
│ NGINX (Reverse Proxy & TLS Termination)                     │
│  - Redirect HTTP (80) -> HTTPS (443)                        │
│  - Offload TLS with self-signed certificate                 │
│  - Upstream load balancing                                  │
└──────────────┬──────────────────────────────┬───────────────┘
               │ (Proxy Headers & HTTP)       │ (Proxy Headers & HTTP)
               ▼                              ▼
     ┌──────────────────┐           ┌──────────────────┐
     │ Backend App 1    │           │ Backend App 2    │
     │ (App / Web)      │           │ (App / Web)      │
     └──────────────────┘           └──────────────────┘
               User-Defined Docker Bridge Network
```

## Requirements

### 1. Network Isolation
- Create a dedicated user-defined Docker bridge network.
- Do not use the default Docker bridge network (`bridge`), as it lacks automatic embedded DNS resolution between containers by name.

### 2. Upstream Backend Services
- Run two lightweight backend container instances (e.g., using `hashicorp/http-echo`, `nginxdemos/hello`, or simple python HTTP servers) connected to your custom network.
- Each instance must return distinct output or include its container hostname to confirm load distribution.
- Backends must **not** expose their ports directly to the host machine only NGINX should have exposed host ports.

### 3. Cryptographic Assets (TLS)
- Generate a private key (RSA 2048-bit minimum or ECDSA `secp384r1`) and a self-signed X.509 certificate using `openssl`.
- Certificate Common Name (CN) and Subject Alternative Name (SAN) must match your local test domain or `localhost`.
- Store the certificates securely and mount them read-only into the NGINX container.

### 4. Reverse Proxy & Upstream Configuration
- Write a modular `nginx.conf` that:
  - Listens on port 80 and immediately issues an HTTP `301 Moved Permanently` to HTTPS.
  - Listens on port 443 with TLS enabled (`ssl_certificate` and `ssl_certificate_key`).
  - Configures an `upstream` block targeting both backend containers.
  - Forwards requests using `proxy_pass`.
  - Preserves client context by passing:
    - `Host`
    - `X-Real-IP`
    - `X-Forwarded-For`
    - `X-Forwarded-Proto`
  - Restricts deprecated SSL protocols (TLS 1.0/1.1 disabled; TLS 1.2 and TLS 1.3 only).

### 5. Verification & Acceptance Criteria
- [X] `curl -I http://localhost` returns `HTTP/1.1 301 Moved Permanently` with `Location: https://localhost/`.
- [X] `curl -vk https://localhost` successfully completes the TLS handshake and outputs a response from one of the backend replicas.
- [X] Multiple consecutive requests show round-robin load distribution between backend 1 and backend 2.
- [X] Upstream logs confirm receipt of `X-Forwarded-For` and `X-Forwarded-Proto: https`.
- [X] Validating configuration syntax (`nginx -t`) inside the container passes with zero errors before starting or reloading.

## Official Documentation References
- [NGINX Reverse Proxy Administration Guide](https://docs.nginx.com/nginx/admin-guide/web-server/reverse-proxy/)
- [NGINX Configuring HTTPS Servers](https://nginx.org/en/docs/http/configuring_https_servers.html)
- [NGINX HTTP Upstream Module Reference](https://nginx.org/en/docs/http/ngx_http_upstream_module.html)
- [OpenSSL `req` Command Reference](https://docs.openssl.org/master/man1/openssl-req/)
- [Mozilla SSL Configuration Generator](https://qqssl-config.mozilla.org/)
- [Docker Container Networking Official Guide](https://docs.docker.com/network/drivers/bridge/)
