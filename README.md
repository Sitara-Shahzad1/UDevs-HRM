# MERN Full-Stack Application

This project contains both frontend (React) and backend (Node.js/Express) applications.

## Project Structure
```
MERN/
├── Our-Product-Backend/     # Backend API (Node.js/Express)
├── U-DEVS-Project/          # Frontend (React/Vite)
└── package.json             # Root package.json for managing both
```

## Quick Start

### 1. Install Dependencies
```bash
npm run install-all
```

### 2. Start Development Servers
```bash
npm run dev
```
This will start:
- Backend on http://localhost:5000
- Frontend on http://localhost:5173

### 3. Individual Commands
```bash
# Backend only
npm run backend

# Frontend only  
npm run frontend

# Production build
npm run start
```

## Configuration

### Backend (Port 5000)
- API endpoints: http://localhost:5000/api
- Swagger docs: http://localhost:5000/api-docs
- Database: PostgreSQL

### Frontend (Port 5173)
- Development: http://localhost:5173
- API calls configured to: http://localhost:5000/api

## Environment Variables
Both projects have their own .env files configured for local development.

## API Connection
The frontend is already configured to connect to the backend via the Config.js file using environment variables.