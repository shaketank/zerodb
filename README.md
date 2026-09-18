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
irm https://raw.githubusercontent.com/shaketank/zerodb/main/install.ps1 | iex
```

Once running, open the **ZeroDB Studio** at `http://127.0.0.1:5051` to get your API Keys. *(Linux support coming soon!)*

---

## 💻 SDK Usage

Install the official client for your frontend (React, Vue, Node.js, etc.):
```bash
npm install zerodb-client
```

Connect to your database and start shipping:
```javascript
import { createClient } from 'zerodb-client';

// 1. Initialize Client
const db = createClient('[http://127.0.0.1:5051/api]', 'your_public_anon_key');

// 2. Insert Data
await db.collection('users').insert('usr_01', {
    name: 'Miroslav',
    role: 'Admin',
    active: true
});

// 3. Advanced Querying
const activeUsers = await db.collection('users').query()
    .where('active', '==', 'true')
    .orderBy('name', 'asc')
    .limit(10)
    .execute();

// 4. Realtime Subscriptions
db.subscribe((event) => {
    console.log(`Document ${event.id} updated in ${event.collection}`);
});
```

## 🔒 Security Architecture
ZeroDB is designed to be self-hosted. By utilizing the integrated **Cloudflare Zero Trust** setup during installation, your database is exposed to the internet securely via HTTPS/WSS without opening any inbound ports on your firewall. 

## 📄 License
This project is licensed under the MIT License.
