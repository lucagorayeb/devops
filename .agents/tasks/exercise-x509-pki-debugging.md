# Exercise: X.509 PKI Lifecycle & Cryptographic Debugging

## Objective
Diagnose and resolve TLS cryptographic asset misconfigurations. You will inspect ASN.1 structures, distinguish between Certificate Signing Requests (CSRs) and X.509 certificates, generate a production-compliant self-signed certificate with Subject Alternative Names (SAN), and cryptographically verify private key pairing before mounting into NGINX.

## Background & Real-World Context
In production deployments, reverse proxies and load balancers fail to boot if cryptographic assets are malformed, mislabeled, or mathematically mismatched. A common pitfall in automated CI/CD pipelines or manual key ceremonies is conflating a **Certificate Signing Request (CSR - PKCS#10)** with an actual **X.509 Public Key Certificate**. 

A web server's TLS engine (such as OpenSSL inside NGINX) requires an issued X.509 certificate containing the issuer's signature and validity timestamps, not an application for a certificate (CSR). Furthermore, modern TLS clients reject certificates without `subjectAltName` (SAN) extensions, making proper certificate generation essential.

## Requirements

### 1. Cryptographic Structure Inspection
- Use the appropriate OpenSSL inspection utility to examine `/certs/server.crt` and determine whether OpenSSL parses it as an X.509 Certificate (`openssl x509`) or a Certificate Signing Request (`openssl req`).
- Identify the ASN.1 headers and observe what payload fields are present (e.g., `Certificate Request Info` vs `TBSCertificate`).

### 2. X.509 Self-Signed Certificate Generation
- Consult the official OpenSSL documentation for `openssl req`.
- Identify the specific flag that instructs OpenSSL to create a self-signed X.509 certificate directly instead of generating a PKCS#10 CSR.
- Re-generate `server.crt` using your existing `server.key` (or generate a fresh RSA 2048+ bit or ECDSA keypair).
- Ensure the certificate includes modern Subject Alternative Names (`SAN`) targeting `DNS:localhost` and `IP:127.0.0.1` to prevent client handshake validation failures.

### 3. Cryptographic Keypair Verification
- Before mounting into Docker, cryptographically verify that `server.key` and `server.crt` share the exact same public key modulus.
- Formulate a command pipeline using OpenSSL to extract and compare the cryptographic hash of the public modulus for both files.

### 4. Container Validation & Health Check
- Run your reverse proxy setup using Docker Compose.
- Confirm that NGINX initializes worker processes without `PEM_read_bio_X509_AUX()` or `ASN1` exceptions.
- Execute a test TLS handshake from the host or client container against `https://localhost` and inspect the certificate details presented by NGINX.

## Official Documentation References
- [OpenSSL `req` Command Reference](https://docs.openssl.org/master/man1/openssl-req/)
- [OpenSSL `x509` Command Reference](https://docs.openssl.org/master/man1/openssl-x509/)
- [OpenSSL `rsa` Command Reference](https://docs.openssl.org/master/man1/openssl-rsa/)
- [NGINX `ngx_http_ssl_module` Directive Reference](https://nginx.org/en/docs/http/ngx_http_ssl_module.html)
- [RFC 5280: Internet X.509 Public Key Infrastructure Certificate and CRL Profile](https://datatracker.ietf.org/doc/html/rfc5280)
- [RFC 2986: PKCS #10: Certification Request Syntax Specification](https://datatracker.ietf.org/doc/html/rfc2986)
