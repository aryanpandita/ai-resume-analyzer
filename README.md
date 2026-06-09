# Resumatch

<p align="center">
  <img src="public/images/resume-scan-2.gif" width="150" alt="Resumatch Logo" />
</p>

<p align="center">
  <strong>AI-powered resume analysis & tracking</strong><br />
  Upload your resume, get smart feedback, and track your applications.
</p>

<p align="center">
  <img src="https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB" alt="React" />
  <img src="https://img.shields.io/badge/React_Router-CA4245?style=for-the-badge&logo=react-router&logoColor=white" alt="React Router" />
  <img src="https://img.shields.io/badge/TypeScript-3178C6?style=for-the-badge&logo=typescript&logoColor=white" alt="TypeScript" />
  <img src="https://img.shields.io/badge/Tailwind_CSS-06B6D4?style=for-the-badge&logo=tailwind-css&logoColor=white" alt="Tailwind CSS" />
  <img src="https://img.shields.io/badge/Vite-646CFF?style=for-the-badge&logo=vite&logoColor=white" alt="Vite" />
  <img src="https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white" alt="Docker" />
  <img src="https://img.shields.io/badge/Node.js-339933?style=for-the-badge&logo=node.js&logoColor=white" alt="Node.js" />
  <img src="https://img.shields.io/badge/Zustand-764ABC?style=for-the-badge&logo=react&logoColor=white" alt="Zustand" />
</p>

---

## Features

- **AI Resume Analysis** — Get detailed AI-powered feedback on your resume using Puter.js AI
- **PDF to Image Conversion** — Upload PDF resumes; they're automatically converted for analysis
- **Resume Tracking** — Store and review all your resume submissions with AI ratings
- **Puter.js Integration** — Authentication, file system, KV storage, and AI all powered by Puter.js
- **Responsive Design** — Works on desktop and mobile with Tailwind CSS

---

## Quick Start with Docker

The fastest way to run Resumatch:

```bash
git clone https://github.com/aryanpandita/ai-resume-analyzer.git
cd ai-resume-analyzer
docker build -t resumatch .
docker run -p 3000:3000 --name resumatch resumatch
```

Open [http://localhost:3000](http://localhost:3000) in your browser.

> **Note:** This app uses [Puter.js](https://puter.com) for authentication and AI.  
> You'll need a Puter account to sign in and use the app.

---

## Local Development

### Prerequisites

- Node.js 22+
- npm

### Setup

```bash
# Clone the repository
git clone https://github.com/aryanpandita/ai-resume-analyzer.git
cd ai-resume-analyzer

# Install dependencies
npm install

# Start the dev server
npm run dev
```

The dev server will be available at [http://localhost:5173](http://localhost:5173).

### Production Build

```bash
# Build for production
npm run build

# Start the production server
npm run start
```

The production server runs on [http://localhost:3000](http://localhost:3000).

---

## Project Structure

```
ai-resume-analyzer/
├── app/
│   ├── components/        # Reusable UI components
│   ├── lib/               # Core libraries (Puter, PDF, utils)
│   ├── routes/            # Page routes (home, auth, upload, resume, wipe)
│   ├── root.tsx           # App root with Puter.js script
│   └── routes.ts          # Route configuration
├── constants/             # App constants
├── public/                # Static assets (images, etc.)
├── types/                 # TypeScript type definitions
├── Dockerfile             # Multi-stage Docker build
├── server.mjs             # Production static file server
├── package.json
├── tsconfig.json
├── vite.config.ts
└── react-router.config.ts
```

---

## Available Routes

| Route | Description |
|-------|-------------|
| `/` | Home — view your uploaded resumes |
| `/auth` | Authentication with Puter.js |
| `/upload` | Upload a new resume (PDF) |
| `/resume/:id` | View AI feedback for a specific resume |
| `/wipe` | Clear all stored data |

---

## Tech Stack

| Technology | Purpose |
|------------|---------|
| [React 19](https://react.dev) | UI framework |
| [React Router 7](https://reactrouter.com) | Routing & navigation |
| [TypeScript](https://typescriptlang.org) | Type safety |
| [Tailwind CSS 4](https://tailwindcss.com) | Styling |
| [Vite 8](https://vitejs.dev) | Build tool & dev server |
| [Zustand](https://zustand-demo.pmnd.rs) | State management |
| [Puter.js](https://puter.com) | Auth, AI, storage (KV + FS) |
| [pdfjs-dist](https://mozilla.github.io/pdf.js) | PDF rendering & conversion |
| [Docker](https://docker.com) | Containerization |

---

<p align="center">
  Made with ❤️ by <strong>Aryan Pandita</strong> 🚀✨🔥
</p>

<p align="center">
  <sub>MIT License · Free to use, modify, and share.</sub>
</p>
