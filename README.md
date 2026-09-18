<div align="center">
  <img src="https://raw.githubusercontent.com/shaketank/zerodb/main/logo.png" alt="ZeroDB Logo" width="150" />
  <h1>⚡ ZeroDB</h1>
  <p><strong>The extreme-performance, self-hosted NoSQL Database for modern Apps.</strong></p>
  
  <p>
    <img src="https://img.shields.io/badge/Written_in-Rust-f74c00?style=for-the-badge&logo=rust" alt="Rust" />
    <img src="https://img.shields.io/badge/License-MIT-blue?style=for-the-badge" alt="License" />
    <img src="https://img.shields.io/badge/Version-1.0.0-success?style=for-the-badge" alt="Version" />
  </p>
</div>

## What is ZeroDB?
ZeroDB is a lightweight, blazing-fast Document Database (BaaS) that gives you everything you need to build React, Vue, or Flutter apps without writing backend code. 

Built entirely in Rust with a custom Write-Ahead Log (WAL) engine, it embraces the **"One Server = One App"** philosophy. No complex multi-tenant overhead, zero dependencies, and instant drop-in deployment.

## ✨ Core Features
- **🚀 Blazing Fast:** Powered by Rust and Tokio async I/O. Capable of handling thousands of concurrent requests.
- **🔌 Zero Config:** Just run a single executable. No Node.js, Python, or Docker required on the host.
- **💻 Built-in Studio:** Manage data, users, and storage via a beautiful, dark-mode web dashboard.
- **⚡ Realtime WebSockets:** Listen to database changes instantly with a single line of code.
- **🔐 Auth & Identity:** Secure user registration and login with native bcrypt hashing.
- **📦 Storage Buckets:** Upload and serve files natively, bypassing the database log for max speed.
- **🛡️ Cloudflare Zero Trust:** Installer includes automatic `cloudflared` daemon setup for secure, portless internet exposure.

---

## ⚡ Quick Start (1-Click Install)

You can install and start the ZeroDB server in seconds. The automated installer will download the binary, optionally secure it via Cloudflare Tunnel, and set it up as a background service.

**Windows (PowerShell):**
```powershell
irm [https://raw.githubusercontent.com/DEIN_GITHUB_NAME/zerodb/main/install.ps1](https://raw.githubusercontent.com/DEIN_GITHUB_NAME/zerodb/main/install.ps1) | iex
