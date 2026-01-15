# Attendance & Leave Management System

## Backend Implementation

### Models Created:
1. **Attendance Model** (`models/attendanceModel.js`)
   - Tracks daily check-in/check-out times
   - Calculates working hours automatically
   - Prevents duplicate entries per day per user

2. **Leave Model** (`models/leaveModel.js`)
   - Manages leave requests with approval workflow
   - Supports multiple leave types
   - Prevents overlapping leave requests

### Controllers:
1. **Attendance Controller** (`controllers/attendanceController.js`)
   - `POST /api/attendance/checkin` - Check in for the day
   - `POST /api/attendance/checkout` - Check out for the day
   - `GET /api/attendance/user/:userId` - Get user's attendance history
   - `GET /api/attendance/date/:date` - Get attendance for specific date
   - `PATCH /api/attendance/break` - Update break time

2. **Leave Controller** (`controllers/leaveController.js`)
   - `POST /api/leaves` - Create leave request
   - `GET /api/leaves` - Get all leaves (admin/team lead)
   - `GET /api/leaves/user/:userId` - Get user's leaves
   - `PATCH /api/leaves/:leaveId/status` - Approve/reject leave
   - `DELETE /api/leaves/:leaveId` - Delete pending leave request

### Routes:
- Attendance routes: `/api/attendance/*`
- Leave routes: `/api/leaves/*`
- All routes protected with authentication middleware

## Frontend Implementation

### Pages:
1. **Attendance Page** (`src/jsx/pages/Attendance.jsx`)
   - Real-time clock display
   - Check-in/check-out functionality
   - Attendance history with pagination
   - Date range filtering

2. **Leaves Page** (`src/jsx/pages/Leaves.jsx`)
   - Leave request form with validation
   - Leave statistics dashboard
   - Role-based leave management
   - Approval/rejection with reasons

### Custom Hooks:
1. **useAttendance** (`src/hooks/useAttendance.js`)
   - Manages attendance state and API calls
   - Handles check-in/check-out operations

2. **useLeaves** (`src/hooks/useLeaves.js`)
   - Manages leave state and API calls
   - Handles CRUD operations for leaves

### Services:
1. **AttendanceService** (`src/services/AttendanceService.js`)
   - API integration for attendance operations

2. **LeaveService** (`src/services/LeaveService.js`)
   - API integration for leave operations

## Features

### Attendance Management:
- ✅ Daily check-in/check-out
- ✅ Automatic working hours calculation
- ✅ Break time tracking
- ✅ Attendance history with filtering
- ✅ Real-time clock display
- ✅ Duplicate prevention

### Leave Management:
- ✅ Multiple leave types (sick, casual, annual, etc.)
- ✅ Date validation and overlap prevention
- ✅ Approval workflow with rejection reasons
- ✅ Role-based access control
- ✅ Leave statistics dashboard
- ✅ Email notifications (ready for implementation)

### Security & Validation:
- ✅ JWT authentication on all endpoints
- ✅ Role-based authorization
- ✅ Input validation and sanitization
- ✅ Proper error handling
- ✅ SQL injection prevention (Sequelize ORM)

## Database Schema

### Attendance Table:
```sql
- id (Primary Key)
- userId (Foreign Key to Users)
- date (Date, Unique with userId)
- checkInTime (DateTime)
- checkOutTime (DateTime, nullable)
- breakTime (Integer, minutes)
- createdAt, updatedAt
```

### Leave Table:
```sql
- id (Primary Key)
- userId (Foreign Key to Users)
- leaveType (Enum)
- startDate (Date)
- endDate (Date)
- reason (Text)
- status (Enum: pending, approved, rejected)
- approvedBy (Foreign Key to Users, nullable)
- approvedAt (DateTime, nullable)
- rejectionReason (Text, nullable)
- createdAt, updatedAt
```

## Usage

1. **Start Backend**: `npm run backend`
2. **Start Frontend**: `npm run frontend`
3. **Access Application**: http://localhost:5173

The system is now fully functional with both attendance and leave management capabilities!