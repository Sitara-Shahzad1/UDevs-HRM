# MERN Full-Stack Application

This project contains both frontend (React) and backend (Node.js/Express) applications with Attendance and Leave Management System.

## Project Structure
```
MERN/
├── Our-Product-Backend/     # Backend API (Node.js/Express/PostgreSQL)
├── U-DEVS-Project/          # Frontend (React/Vite)
├── package.json             # Root package.json for managing both
├── start.bat                # Windows startup script
└── start.sh                 # Unix/Linux/Mac startup script
```

## Features

### Backend (Port 5000)
- ✅ User Authentication & Authorization (JWT)
- ✅ Role-based Access Control (Admin, Team Lead, Employee, Internee)
- ✅ Task Management System
- ✅ Attendance Management (Check-in/Check-out)
- ✅ Leave Management (Request, Approve, Reject)
- ✅ Notification System
- ✅ File Upload (Profile pictures, ID cards)
- ✅ PostgreSQL Database
- ✅ Swagger API Documentation

### Frontend (Port 5173)
- ✅ Modern React with Vite
- ✅ Redux State Management
- ✅ Role-based Dashboard
- ✅ User Management
- ✅ Task Management
- ✅ Real-time Attendance Tracking
- ✅ Leave Request & Approval System
- ✅ Responsive Design
- ✅ Toast Notifications

## Quick Start

### Prerequisites
- Node.js (v16 or higher)
- PostgreSQL (v12 or higher)
- npm or yarn

### 1. Clone the Repository
```bash
git clone <your-repo-url>
cd MERN
```

### 2. Install All Dependencies
```bash
npm run install-all
```

This will install dependencies for:
- Root project
- Backend (Our-Product-Backend)
- Frontend (U-DEVS-Project)

### 3. Configure Environment Variables

**Backend (.env in Our-Product-Backend/):**
```env
DB_USER=postgres
DB_HOST=localhost
DB_NAME=akademi_db
DB_PASSWORD=your_password
DB_PORT=5432

JWT_SECRET=your_jwt_secret_key
PORT=5000
NODE_ENV=development
```

**Frontend (.env in U-DEVS-Project/):**
```env
VITE_API_URL=http://localhost:5000/api
VITE_IMAGE_URL=http://localhost:5000
VITE_APP_TITLE=Akademi
```

### 4. Setup Database
1. Create PostgreSQL database:
```sql
CREATE DATABASE akademi_db;
```

2. The tables will be created automatically when you start the backend.

### 5. Start Development Servers

**Option A: Using npm scripts (Recommended)**
```bash
npm run dev
```

**Option B: Using startup scripts**

Windows:
```bash
start.bat
```

Unix/Linux/Mac:
```bash
chmod +x start.sh
./start.sh
```

This will start:
- Backend on http://localhost:5000
- Frontend on http://localhost:5173

### 6. Access the Application
- **Frontend**: http://localhost:5173
- **Backend API**: http://localhost:5000/api
- **API Documentation**: http://localhost:5000/api-docs

## Individual Commands

### Backend Only
```bash
npm run backend
```

### Frontend Only
```bash
npm run frontend
```

### Production Build
```bash
npm run start
```

## API Endpoints

### Authentication
- `POST /api/auth/login` - User login
- `POST /api/auth/register` - Register new user (Admin only)
- `GET /api/auth/profile` - Get user profile
- `PUT /api/auth/profile` - Update profile
- `PUT /api/auth/change-password` - Change password

### Attendance
- `POST /api/attendance/checkin` - Check in for the day
- `POST /api/attendance/checkout` - Check out for the day
- `GET /api/attendance/user/:userId` - Get user's attendance history
- `GET /api/attendance/date/:date` - Get attendance for specific date
- `PATCH /api/attendance/break` - Update break time
- `GET /api/attendance/` - Get all attendance (Admin/Team Lead)

### Leaves
- `POST /api/leaves` - Create leave request
- `GET /api/leaves/user/:userId` - Get user's leaves
- `GET /api/leaves` - Get all leaves (Admin/Team Lead)
- `PATCH /api/leaves/:leaveId/status` - Approve/reject leave
- `DELETE /api/leaves/:leaveId` - Delete pending leave request

### Tasks
- `POST /api/tasks` - Create task
- `GET /api/tasks` - Get all tasks
- `GET /api/tasks/:id` - Get task by ID
- `PUT /api/tasks/:id` - Update task
- `DELETE /api/tasks/:id` - Delete task

### Users
- `GET /api/users` - Get all users (with filters)
- `GET /api/users/:id` - Get user by ID
- `PUT /api/users/:id` - Update user
- `DELETE /api/users/:id` - Delete user

## Default User Roles

1. **Admin** - Full system access
2. **Team Lead** - Manage internees and tasks
3. **Employee** - Regular employee access
4. **Internee** - Limited access for interns

## Technology Stack

### Backend
- Node.js
- Express.js
- PostgreSQL
- Sequelize ORM
- JWT Authentication
- Bcrypt
- Multer (File uploads)
- Swagger (API Documentation)

### Frontend
- React 18
- Vite
- Redux Toolkit
- React Router v6
- Axios
- Bootstrap 5
- React-Toastify
- SweetAlert2

## Project Configuration

### Backend Configuration
- API endpoints: http://localhost:5000/api
- Swagger docs: http://localhost:5000/api-docs
- Database: PostgreSQL
- File uploads: /uploads directory

### Frontend Configuration
- Development: http://localhost:5173
- API calls configured via environment variables
- Image base URL: http://localhost:5000

## Troubleshooting

### Backend won't start
1. Check PostgreSQL is running
2. Verify database credentials in .env
3. Ensure port 5000 is not in use

### Frontend won't start
1. Check backend is running
2. Verify VITE_API_URL in .env
3. Ensure port 5173 is not in use

### Database connection errors
1. Verify PostgreSQL service is running
2. Check database exists: `CREATE DATABASE akademi_db;`
3. Verify credentials in backend .env file

### CORS errors
- Backend is configured to accept requests from all origins in development
- For production, update CORS settings in app.js

## Development Workflow

1. Start both servers: `npm run dev`
2. Make changes to code (hot reload enabled)
3. Test features in browser
4. Check API docs at http://localhost:5000/api-docs

## Production Deployment

### Backend
1. Set NODE_ENV=production
2. Update database credentials
3. Configure proper CORS origins
4. Use process manager (PM2)

### Frontend
1. Build: `cd U-DEVS-Project && npm run build`
2. Deploy dist/ folder to hosting service
3. Update API URL to production backend

## Contributing

1. Create a feature branch
2. Make your changes
3. Test thoroughly
4. Submit pull request

## License

MIT License

## Support

For issues and questions, please create an issue in the repository.