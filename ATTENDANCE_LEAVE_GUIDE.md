# Attendance & Leave Management - Quick Reference

## Overview
This document provides a quick reference for using the Attendance and Leave Management features.

## Attendance Management

### For All Users

#### Check In
1. Navigate to **Attendance** page
2. Click **Check In** button
3. System records current time as check-in time
4. You can only check in once per day

#### Check Out
1. After checking in, the **Check Out** button appears
2. Click **Check Out** when leaving
3. System calculates total working hours automatically

#### View History
- View your attendance history in the table below
- Filter by date range using the date pickers
- See check-in time, check-out time, and working hours

### For Admins/Team Leads
- View all employees' attendance records
- Filter by user, date range
- Export attendance reports (coming soon)

## Leave Management

### Requesting Leave

1. Navigate to **Leaves** page
2. Click **Request Leave** button
3. Fill in the form:
   - **Leave Type**: Select from dropdown
     - Sick Leave
     - Casual Leave
     - Annual Leave
     - Maternity Leave
     - Paternity Leave
     - Emergency Leave
   - **Start Date**: Select start date (cannot be in past)
   - **End Date**: Select end date (must be after start date)
   - **Reason**: Provide detailed reason
4. Click **Submit Request**
5. Your request will be sent to admin/team lead for approval

### Leave Types

| Type | Description |
|------|-------------|
| Sick Leave | For medical reasons |
| Casual Leave | For personal matters |
| Annual Leave | Planned vacation |
| Maternity Leave | For expecting mothers |
| Paternity Leave | For new fathers |
| Emergency Leave | Urgent situations |

### Managing Your Leaves

#### View Status
- **Pending**: Waiting for approval (yellow badge)
- **Approved**: Leave approved (green badge)
- **Rejected**: Leave rejected (red badge)

#### Delete Request
- You can only delete **pending** requests
- Click the delete icon (trash) next to your pending leave
- Confirm deletion in the popup

### For Admins/Team Leads

#### Approve Leave
1. View all leave requests in the table
2. Find pending requests
3. Click the **green checkmark** icon to approve
4. Confirm approval in the popup

#### Reject Leave
1. Find pending request
2. Click the **red X** icon to reject
3. Enter rejection reason in the popup
4. Reason will be visible to the employee

## Statistics Dashboard

### Attendance Stats
- Total attendance records
- Average working hours
- Late check-ins
- Early check-outs

### Leave Stats
- Total leaves requested
- Pending approvals
- Approved leaves
- Rejected leaves

## Tips & Best Practices

### Attendance
- ✅ Check in as soon as you start work
- ✅ Check out when you leave
- ✅ Review your attendance history regularly
- ❌ Don't forget to check out (affects working hours calculation)

### Leaves
- ✅ Request leaves in advance when possible
- ✅ Provide clear and detailed reasons
- ✅ Check leave status regularly
- ✅ Plan around approved leaves
- ❌ Don't request overlapping leaves
- ❌ Don't request leaves for past dates

## Validation Rules

### Attendance
- One check-in per day per user
- Cannot check in twice on same day
- Cannot check out without checking in
- Cannot check out twice

### Leaves
- Start date cannot be in the past
- End date must be after or equal to start date
- Cannot have overlapping leave requests
- Can only delete pending requests
- Only admins/team leads can approve/reject

## Notifications

### You'll receive notifications for:
- Leave request submitted
- Leave approved
- Leave rejected
- Attendance reminders (coming soon)

## Troubleshooting

### Can't Check In
- **Issue**: Already checked in today
- **Solution**: You can only check in once per day

### Can't Submit Leave Request
- **Issue**: Overlapping dates
- **Solution**: Check existing leaves and choose different dates

### Can't Delete Leave
- **Issue**: Leave already processed
- **Solution**: Only pending leaves can be deleted

### Can't See Approve/Reject Buttons
- **Issue**: Not authorized
- **Solution**: Only admins and team leads can approve/reject leaves

## API Endpoints Reference

### Attendance
```
POST   /api/attendance/checkin
POST   /api/attendance/checkout
GET    /api/attendance/user/:userId
GET    /api/attendance/date/:date
PATCH  /api/attendance/break
GET    /api/attendance/
```

### Leaves
```
POST   /api/leaves
GET    /api/leaves/user/:userId
GET    /api/leaves
PATCH  /api/leaves/:leaveId/status
DELETE /api/leaves/:leaveId
```

## Support

For technical issues or questions:
1. Check this documentation
2. Contact your system administrator
3. Create an issue in the repository

---

**Last Updated**: 2024
**Version**: 1.0.0