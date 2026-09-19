<div align="center">
  <img src="https://i.imgur.com/RbTsKyg.png" alt="ZeroDB Logo" width="150" />
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

Built entirely in Rust with a custom Write-Ahead Log (WAL) engine, it embraces absolute simplicity. No complex multi-tenant overhead, zero dependencies, and instant drop-in deployment on any Linux VPS.

## ✨ Core Features
- **🚀 Blazing Fast:** Powered by Rust and Tokio async I/O. Capable of handling thousands of concurrent requests.
- **🔌 Zero Config Setup:** Just run the binary. The engine auto-generates a secure Master Admin Key and prints it to your terminal. No `.env` wrangling required.
- **💻 Built-in Studio:** Manage data, users, and storage via a beautiful, dark-mode web dashboard embedded directly in the binary.
- **📱 Device Pairing:** Generate QR codes inside the Studio to instantly provision external mobile clients (like Flutter Apps) with connection URLs and keys.
- **⚡ Realtime WebSockets:** Listen to database changes instantly with a single line of code.
- **🔐 Auth & Identity:** Secure user registration and login with native bcrypt hashing.
- **📦 Storage Buckets:** Upload and serve files natively. Buckets are created dynamically on the fly, saving files directly to disk for max speed.

---

## ⚡ Quick Start (Linux VPS)

ZeroDB is designed to run completely standalone on your server. You do not need Docker, Node.js, or Python.

**1. Download & Extract:**
Download the latest `zerodb-linux-amd64.zip` from the [Releases page](https://github.com/shaketank/zerodb/releases) and extract it on your Linux server.

**2. Make Executable:**
```bash
chmod +x zerodb-server
