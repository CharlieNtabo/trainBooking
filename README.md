# trainBooking
## ERD DIAGRAM
## Overview
This project implements a train booking system with SQL database tables for managing stations, passengers, bookings, and schedules.

## Database Schema
The database consists of four tables:

1. **stations**
- `stationID` (INT, Primary Key, Auto Increment)
- `stationName` (VARCHAR)

2. **passengers**
- `passengerID` (INT, Primary Key)
- `name` (VARCHAR)
- `phoneNumber` (VARCHAR)
- `emailAddress` (VARCHAR)

3. **bookings**
- `bookingID` INT PRIMARY KEY
- `passengerID` INT FOREIGN KEY
- `bookingDate` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
- `travelDate` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
- `seatNumber` INT
- `arrivalStation` VARCHAR
- `departureStation` VARCHAR

4. **schedules**
- `scheduleID` VARCHAR PRIMARY KEY
- `stationID` INT FOREIGN KEY
- `arrivalTime` TIME
- `departureTime` (TIME)

## Sample Data
- **Stations:** Nairobi, Mombasa, Kigali, Kampala
- **Passengers:**
- Oscar, Mitchelle, Joel, Charles
- **Bookings:**
- Example: BookingID `1120` for Passenger `320`, traveling from Nairobi to Kigali
- **Schedules:**
- Example: ScheduleID `A10` for StationID `4`, Arrival `10:00:30`, Departure `01:00:05`

## Setup
1. Create and use the database:
```sql
USE Station;
```
2. Create tables using the provided schema.
3. Populate the tables with sample data.

## Usage
- **Query Stations:** List available stations.
- **Query Passengers:** Check passenger details.
- **Query Bookings:** List booking information.
- **Query Schedules:** Check train schedules for arrival and departure times.

## Notes
- Run the `ALTER` and `INSERT` commands after creating the tables.
- Adjust the `TIMESTAMP` and `VARCHAR` fields according to the use case.


[train booking.docx](https://github.com/user-attachments/files/18378218/train.booking.docx)
