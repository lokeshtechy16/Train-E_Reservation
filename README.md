# Train Booking System

This project is a Train Booking System designed using SQL for managing users, trains, stations, bookings, payments, and more. It simulates a real-world train reservation system, where users can book tickets, view available trains, and manage their reservations.

## Database Schema Overview

The project consists of several tables, each of which is designed to handle different aspects of a train booking system:

### 1. `Users_info`
- Stores information about users, including their unique ID, username, email, first name, and last name.

### 2. `Stations_info`
- Stores station-related information including station code, station name, city, and state.

### 3. `Trains_Info`
- Stores train information such as train number, train name, station code, available seats, origin and destination stations, and schedule (departure and arrival times).

### 4. `Coach_info`
- Stores information about the coaches in each train, including coach type (Seater, Sleeper, AC) and the total number of seats in each coach.

### 5. `Passenger_info`
- Contains details about passengers such as name, gender, phone number, and the user who made the booking.

### 6. `Booking_Info`
- Contains booking details, including the booking ID, passenger information, seat number, meal preference, and booking status (Confirm, Waiting list, or Cancelled).

### 7. `Payments_Info`
- Manages the payment information, including payment method (Credit card, Debit card, Net Banking, UPI), amount, and payment status.

### 8. `Audit_log`
- Logs important actions and activities such as user logins, bookings, cancellations, and payment actions.

### 9. `Cancellation_Info`
- Tracks booking cancellations, reasons for cancellation, and refund statuses (Processed, Pending, Rejected).

## Installation

To run the Train Booking System, follow these steps:

1. Install a SQL database management system (e.g., MySQL, PostgreSQL).
2. Create a database schema named `TRAIN_BOOKING` by running the following command:
    ```sql
    CREATE SCHEMA TRAIN_BOOKING;
    USE TRAIN_BOOKING;
    ```
3. Run the SQL script provided in this repository to create the necessary tables and insert sample data.
4. Test the schema using SQL queries to manage bookings, payments, cancellations, and audits.

## Table Relationships

- `Users_info` → `Passenger_info`: Each user can have multiple passengers associated with their bookings.
- `Stations_info` → `Trains_Info`: Each train operates from specific stations.
- `Trains_Info` → `Coach_info`: Each train has multiple coaches with different seat types.
- `Passenger_info` → `Booking_Info`: Each booking is associated with a passenger.
- `Booking_Info` → `Payments_Info`: Each booking may have an associated payment transaction.
- `Booking_Info` → `Cancellation_Info`: Each booking may also be cancelled, with a record in the cancellation table.

## Key Features

- **User Management**: Store and manage user details.
- **Train Management**: Manage train details, including schedules and availability.
- **Booking Management**: Create, update, and cancel bookings for different passengers.
- **Payment Tracking**: Track payment information and statuses for bookings.
- **Cancellation and Refunds**: Process booking cancellations and manage refunds.
- **Audit Logging**: Track important actions and system events for auditing.

## Sample Queries

1. Retrieve all users:
    ```sql
    SELECT * FROM Users_info;
    ```

2. Find available trains between stations:
    ```sql
    SELECT * FROM Trains_Info WHERE Orgin_station = 'Ambli Road' AND Destination_station = 'Vadodara';
    ```

3. Get booking details for a specific user:
    ```sql
    SELECT * FROM Booking_Info WHERE Passenger_id = (SELECT Passenger_id FROM Passenger_info WHERE user_id = 111);
    ```

4. Audit log actions performed by a specific user:
    ```sql
    SELECT * FROM Audit_log WHERE User_id = 113;
    ```

## Future Enhancements

- Implement train seat allocation and seat availability tracking in real-time.
- Add functionalities for modifying bookings and meal preferences.
- Implement a web or mobile front-end to make the system accessible to end-users.
- Include advanced features like dynamic pricing based on seat availability.

