CREATE SCHEMA TRAIN_BOOKING;
USE TRAIN_BOOKING;

create table Users_info(
User_Id int primary key, 
User_Name varchar(100) unique not null,
email varchar(100) unique not null,
First_name varchar(100),
Second_name varchar(100)
);

insert into Users_info (User_id, User_name, email, First_name, Second_name) values
(111,'Angel','angel@gmail.com','Angel','Ashirvatham'),
(112, 'JohnDoe', 'johndoe@gmail.com', 'John', 'Doe'),
(113, 'JaneSmith', 'janesmith@gmail.com', 'Jane', 'Smith'),
(114, 'MikeBrown', 'mikebrown@gmail.com', 'Mike', 'Brown'),
(115, 'SaraWilson', 'sarawilson@gmail.com', 'Sara', 'Wilson'),
(116, 'TomHarris', 'tomharris@gmail.com', 'Tom', 'Harris'),
(117, 'EmilyClark', 'emilyclark@gmail.com', 'Emily', 'Clark'),
(118, 'DavidJones', 'davidjones@gmail.com', 'David', 'Jones'),
(119, 'LauraWhite', 'laurawhite@gmail.com', 'Laura', 'White'),
(120, 'JamesGreen', 'jamesgreen@gmail.com', 'James', 'Green'),
(121, 'SophiaMartin', 'sophiamartin@gmail.com', 'Sophia', 'Martin'),
(122, 'RobertLee', 'robertlee@gmail.com', 'Robert', 'Lee'),
(123, 'IsabellaTaylor', 'isabellataylor@gmail.com', 'Isabella', 'Taylor'),
(124, 'WilliamBrown', 'williambrown@gmail.com', 'William', 'Brown'),
(125, 'MiaAnderson', 'miaanderson@gmail.com', 'Mia', 'Anderson'),
(126, 'MichaelWilson', 'michaelwilson@gmail.com', 'Michael', 'Wilson'),
(127, 'CharlotteMoore', 'charlottemoore@gmail.com', 'Charlotte', 'Moore'),
(128, 'DanielThomas', 'danielthomas@gmail.com', 'Daniel', 'Thomas'),
(129, 'OliviaKing', 'oliviaking@gmail.com', 'Olivia', 'King'),
(130, 'HenryWalker', 'henrywalker@gmail.com', 'Henry', 'Walker');

create table Stations_info(
Station_code varchar(10) primary key,
Station_Name varchar(100) unique not null,
city varchar(100) not null,
state varchar(100) not null
);

insert into Stations_info (station_code, station_name, city, state) values
("AA", "Ataria", "Sitapur", "Uttar Pradesh"),
("AABH", "Ambika Bhawani Halt", "Saran", "Bihar"),
("AADR", "Amb Andaura", "Una", "Himachal Pradesh"),
("AAG", "Angar", "Solapur", "Maharashtra"),
("AAH", "Itehar", "Bhind", "Madhya Pradesh"),
("AAK", "Ankai Kila", "Nashik", "Maharashtra"),
("AAL", "Amlai", "Shahdol", "Madhya Pradesh"),
("AAM", "Angadippuram", "Malappuram", "Kerala"),
("AAP", "Ambiapur", "Kanpur Dehat", "Uttar Pradesh"),
("AAR", "Adesar", "Kutch", "Gujarat"),
("AAS", "Asranada", "Jodhpur", "Rajasthan"),
("AAU", "Alapadu", "Krishna", "Andhra Pradesh"),
("AV", "Ambav", "Kheda", "Gujarat"),
("AAY", "Aralvaymozhi", "Kanyakumari", "Tamil Nadu"),
("AB", "Ambur", "Tirupattur", "Tamil Nadu"),
("ABB", "Abada", "Howrah", "West Bengal"),
("ABD", "Ambli Road", "Ahmadabad", "Gujarat"),
("ABE", "Ambikeshwar", "Morena", "Madhya Pradesh"),
("ABEO", "Pattaravakkam", "Chennai", "Tamil Nadu"),
("ABFC", "Ambari Falakata", "Jalpaiguri", "West Bengal");



create table Trains_Info(
Train_number int primary key,
Train_name varchar(100) unique not null,
Station_code varchar(10),
Available_seats int not null,
Orgin_station varchar(100),
Destination_station varchar(100),
Departure_at datetime NOT NULL,
Arraival_at datetime NOT NULL,
foreign key (Station_code) references stations_info(station_code)
);

insert into trains_info(Train_number, Train_name, Station_code, Available_seats, Orgin_station, Destination_station, Departure_at, Arraival_at) values 
(12345, 'Express 1', 'AA', 200, 'Ataria', 'Kanpur', '2024-10-01 08:00:00', '2024-10-01 12:00:00'),
(22222, 'Fast Passenger 12', 'AAU', 200, 'Alapadu', 'Vijayawada', '2024-10-12 07:30:00', '2024-10-12 12:30:00'),
(23456, 'Superfast 2', 'AABH', 150, 'Ambika Bhawani Halt', 'Patna', '2024-10-02 09:30:00', '2024-10-02 14:30:00'),
(44444, 'Rajdhani 14', 'AAY', 250, 'Aralvaymozhi', 'Chennai', '2024-10-14 09:15:00', '2024-10-14 14:15:00'),
(34567, 'Rajdhani 3', 'AADR', 300, 'Amb Andaura', 'Shimla', '2024-10-03 10:00:00', '2024-10-03 15:00:00'),
(55555, 'Shatabdi 15', 'AB', 220, 'Ambur', 'Bangalore', '2024-10-15 10:00:00', '2024-10-15 15:00:00'),
(45678, 'Shatabdi 4', 'AAG', 250, 'Angar', 'Pune', '2024-10-04 11:00:00', '2024-10-04 16:00:00'),
(56789, 'Passenger 5', 'AAH', 180, 'Itehar', 'Bhopal', '2024-10-05 12:30:00', '2024-10-05 17:30:00'),
(77777, 'Intercity 17', 'ABD', 260, 'Ambli Road', 'Vadodara', '2024-10-17 12:00:00', '2024-10-17 17:00:00'),
(67890, 'Intercity 6', 'AAK', 220, 'Ankai Kila', 'Mumbai', '2024-10-06 13:00:00', '2024-10-06 18:00:00'),
(88888, 'Jan Shatabdi 18', 'ABE', 280, 'Ambikeshwar', 'Gwalior', '2024-10-18 13:30:00', '2024-10-18 18:30:00'),
(99999, 'Passenger 19', 'ABEO', 300, 'Pattaravakkam', 'Chennai', '2024-10-19 14:00:00', '2024-10-19 19:00:00'),
(11223, 'Mail 20', 'ABFC', 190, 'Ambari Falakata', 'Siliguri', '2024-10-20 15:30:00', '2024-10-20 20:30:00'),
(78901, 'Duronto 7', 'AAL', 300, 'Amlai', 'Indore', '2024-10-07 14:30:00', '2024-10-07 19:30:00'),
(89012, 'Jan Shatabdi 8', 'AAM', 160, 'Angadippuram', 'Ernakulam', '2024-10-08 15:00:00', '2024-10-08 20:00:00'),
(90123, 'Mail 9', 'AAP', 190, 'Ambiapur', 'Lucknow', '2024-10-09 16:00:00', '2024-10-09 21:00:00'),
(10123, 'Express 10', 'AAR', 210, 'Adesar', 'Ahmedabad', '2024-10-10 17:30:00', '2024-10-10 22:30:00'),
(11111, 'Super Express 11', 'AAS', 180, 'Asranada', 'Jodhpur', '2024-10-11 06:00:00', '2024-10-11 10:00:00'),
(33333, 'Express 13', 'AV', 170, 'Ambav', 'Surat', '2024-10-13 08:45:00', '2024-10-13 13:45:00'),
(66666, 'Duronto 16', 'ABB', 240, 'Abada', 'Kolkata', '2024-10-16 11:30:00', '2024-10-16 16:30:00');




create table coach_info(
coach_id varchar(50) primary key,
Train_number int,
Coach_type ENUM('Seater','Sleeper','AC'), #ENUM DATATYPE
Total_seats int,
foreign key (Train_number) references trains_Info(train_number) 
);
-- Get the details of all coaches belonging to a specific train, including the coach type and total seats.

select coach_id, coach_type, coach_seats 
from coach_info where train_number= 34567;

insert into coach_info (coach_id, Train_number, Coach_type, Total_seats) values
('C001', 12345, 'Seater', 72),
('C002', 12345, 'Sleeper', 60),
('C003', 23456, 'AC', 40),
('C004', 23456, 'Sleeper', 64),
('C005', 34567, 'Seater', 80),
('C006', 34567, 'AC', 36),
('C007', 45678, 'Sleeper', 64),
('C008', 45678, 'AC', 40),
('C009', 56789, 'Seater', 72),
('C010', 56789, 'Sleeper', 60),
('C011', 67890, 'AC', 50),
('C012', 67890, 'Sleeper', 65),
('C013', 78901, 'Seater', 70),
('C014', 78901, 'AC', 45),
('C015', 89012, 'Sleeper', 64),
('C016', 89012, 'Seater', 75),
('C017', 90123, 'AC', 48),
('C018', 90123, 'Sleeper', 62),
('C019', 10123, 'Seater', 74),
('C020', 10123, 'AC', 46);


create table passenger_info(
Passenger_id int primary key,
user_id int,
name varchar(100) not null,
Gender enum('Male', 'Female','Transgender'),
phone_number varchar(100) not null,
foreign key (user_id) references users_info(user_id)
);


insert into passenger_info (Passenger_id, user_id, name, Gender, phone_number) values
(1, 111, 'John Doe', 'Male', '1234567890'), 
(2, 111, 'Johnathan Doe', 'Male', '1234567891'),  
(3, 112, 'Alice Smith', 'Female', '9876543210'), 
(4, 112, 'Alicia Smith', 'Female', '9876543211'),   
(5, 113, 'Robert Brown', 'Male', '1122334455'),  
(6, 113, 'Robbie Brown', 'Transgender', '1122334456'),
(7, 114, 'Michael Johnson', 'Male', '9988776655'),  
(8, 114, 'Mickey Johnson', 'Male', '9988776656'), 
(9, 115, 'Emily Davis', 'Female', '2233445566'),
(10, 115, 'Emilia Davis', 'Female', '2233445567'),  
(11, 116, 'Jessica Wilson', 'Female', '7788996655'),
(12, 116, 'Jessie Wilson', 'Female', '7788996656'),   
(13, 117, 'David Miller', 'Male', '3344556677'),
(14, 117, 'Dave Miller', 'Male', '3344556678'),    
(15, 118, 'Laura White', 'Female', '6655443322'),
(16, 118, 'Laurel White', 'Female', '6655443323'),   
(17, 119, 'Chris Moore', 'Male', '5566778899'),
(18, 119, 'Christopher Moore', 'Male', '5566778900'),   
(19, 120, 'Sophia Taylor', 'Transgender', '8877665544'),
(20, 120, 'Sophie Taylor', 'Female', '8877665545');


create table Booking_Info(
Booking_id int primary key,
Passenger_id int not null,
Train_number int not null,
Booking_date datetime default now(),
Seat_number int not null,
Meal_preference enum('Vegetarian', 'Non-Vegetarian','No Meal'),
Booking_status enum('Confirm','Waiting list','Cancelled'),
foreign key (Passenger_id) references passenger_info (Passenger_id),
foreign key (Train_number) references Trains_info (Train_number)
);

insert into Booking_Info (Booking_id, Passenger_id, Train_number, Booking_date, Seat_number, Meal_preference, Booking_status) values
(100001, 1, 12345, NOW(), 10, 'Vegetarian', 'Confirm'),  
(100002, 2, 23456, NOW(), 15, 'Non-Vegetarian', 'Confirm'),  
(100003, 3, 34567, NOW(), 20, 'No Meal', 'Waiting list'),  
(100004, 4, 45678, NOW(), 5, 'Vegetarian', 'Confirm'),  
(100005, 5, 56789, NOW(), 8, 'Non-Vegetarian', 'Cancelled'), 
(100006, 6, 67890, NOW(), 12, 'Vegetarian', 'Confirm'),  
(100007, 7, 78901, NOW(), 3, 'No Meal', 'Waiting list'),  
(100008, 8, 89012, NOW(), 1, 'Non-Vegetarian', 'Confirm'),  
(100009, 9, 90123, NOW(), 22, 'Vegetarian', 'Cancelled'),  
(100010, 10, 10123, NOW(), 18, 'No Meal', 'Confirm'),
(100011, 11, 12345, NOW(), 14, 'Vegetarian', 'Confirm'),  
(100012, 12, 23456, NOW(), 16, 'Non-Vegetarian', 'Confirm'),  
(100013, 13, 34567, NOW(), 19, 'No Meal', 'Waiting list'),  
(100014, 14, 45678, NOW(), 4, 'Vegetarian', 'Confirm'),  
(100015, 15, 56789, NOW(), 7, 'Non-Vegetarian', 'Cancelled'), 
(100016, 16, 67890, NOW(), 13, 'Vegetarian', 'Confirm'),  
(100017, 17, 78901, NOW(), 2, 'No Meal', 'Waiting list'),  
(100018, 18, 89012, NOW(), 9, 'Non-Vegetarian', 'Confirm'),  
(100019, 19, 90123, NOW(), 21, 'Vegetarian', 'Cancelled'),  
(100020, 20, 10123, NOW(), 17, 'No Meal', 'Confirm');

create table Payments_Info(
Payment_id varchar(100) primary key,
Booking_id int not null,
Amount decimal(10,2),
Payment_date datetime default NOW(),
Payment_method enum('Credit card', 'Debit Card', 'Net Banking', 'UPI'),
Payment_status enum('Success', 'Failed', 'Pending'),
Foreign key (Booking_id) references Booking_Info (Booking_id)
);

insert into Payments_Info (Payment_id, Booking_id, Amount, Payment_date, Payment_method, Payment_status) values
('PAY100001', 100001, 1500.00, NOW(), 'Credit card', 'Success'),
('PAY100002', 100002, 1200.50, NOW(), 'Debit Card', 'Success'),
('PAY100003', 100003, 800.75, NOW(), 'Net Banking', 'Pending'),
('PAY100004', 100004, 1000.00, NOW(), 'UPI', 'Success'),
('PAY100005', 100005, 500.25, NOW(), 'Credit card', 'Failed'),
('PAY100006', 100006, 750.00, NOW(), 'Debit Card', 'Success'),
('PAY100007', 100007, 1200.00, NOW(), 'Net Banking', 'Pending'),
('PAY100008', 100008, 900.50, NOW(), 'UPI', 'Success'),
('PAY100009', 100009, 1100.00, NOW(), 'Credit card', 'Failed'),
('PAY100010', 100010, 650.00, NOW(), 'Debit Card', 'Success'),
('PAY100011', 100011, 1300.00, NOW(), 'Net Banking', 'Pending'),
('PAY100012', 100012, 450.00, NOW(), 'UPI', 'Success'),
('PAY100013', 100013, 550.00, NOW(), 'Credit card', 'Failed'),
('PAY100014', 100014, 950.00, NOW(), 'Debit Card', 'Success'),
('PAY100015', 100015, 1200.00, NOW(), 'Net Banking', 'Pending'),
('PAY100016', 100016, 1100.50, NOW(), 'UPI', 'Success'),
('PAY100017', 100017, 800.75, NOW(), 'Credit card', 'Failed'),
('PAY100018', 100018, 900.00, NOW(), 'Debit Card', 'Success'),
('PAY100019', 100019, 1300.50, NOW(), 'Net Banking', 'Pending'),
('PAY100020', 100020, 1050.00, NOW(), 'UPI', 'Success');

create table Audit_log(
Log_id varchar(100) primary key,
Action varchar(100) not null,
User_id int not null,
Details text,
Foreign key (User_id) references Users_info(User_id)
);

insert into Audit_log (Log_id, Action, User_id, Details) values
('LOG100001', 'User Login', 111, 'User John Doe logged in successfully.'),
('LOG100002', 'User Logout', 112, 'User Alice Smith logged out.'),
('LOG100003', 'Booking Created', 113, 'Booking created for Train 12345.'),
('LOG100004', 'Payment Processed', 114, 'Payment of $1500.00 processed successfully.'),
('LOG100005', 'Profile Updated', 115, 'User Emily Davis updated profile information.'),
('LOG100006', 'Booking Cancelled', 116, 'Booking cancelled for Train 67890.'),
('LOG100007', 'Password Changed', 117, 'User David Miller changed password.'),
('LOG100008', 'Payment Failed', 118, 'Payment failed for Booking ID 100002.'),
('LOG100009', 'User Created', 119, 'New user created: Chris Moore.'),
('LOG100010', 'Seat Selection', 120, 'Seats selected for Train 89012.'),
('LOG100011', 'Booking Updated', 111, 'Booking updated for Train 10123.'),
('LOG100012', 'Feedback Submitted', 112, 'Feedback submitted regarding Train services.'),
('LOG100013', 'Password Reset', 113, 'User Robert Brown reset password.'),
('LOG100014', 'User Deactivated', 114, 'User account for Michael Johnson deactivated.'),
('LOG100015', 'Train Schedule Changed', 115, 'Train schedule updated for Train 56789.'),
('LOG100016', 'User Role Updated', 116, 'User role updated for Jessica Wilson.'),
('LOG100017', 'Booking Reminder Sent', 117, 'Reminder sent for upcoming booking.'),
('LOG100018', 'Feedback Responded', 118, 'Response sent for user feedback.'),
('LOG100019', 'User Activity Report Generated', 119, 'Activity report generated for user Chris Moore.'),
('LOG100020', 'Audit Log Cleared', 120, 'Audit logs cleared for maintenance.');

create table Cancellation_Info (
Cancellation_id int primary key,
Booking_id int not null,
Cancellation_date datetime default NOW(),
Reason TEXT,
Refund_amount decimal(10, 2),
Refund_status enum('Processed', 'Pending', 'Rejected'),
foreign key (Booking_id) references Booking_Info(Booking_id)
);


insert into Cancellation_Info (Cancellation_id, Booking_id, Cancellation_date, Reason, Refund_amount, Refund_status) values
(1, 100001, NOW(), 'Change of travel plans', 1500.00, 'Processed'),
(2, 100002, NOW(), 'Family emergency', 1200.50, 'Pending'),
(3, 100003, NOW(), 'Train schedule changed', 800.75, 'Processed'),
(4, 100004, NOW(), 'Accidental booking', 1000.00, 'Rejected'),
(5, 100005, NOW(), 'Health issues', 500.25, 'Processed'),
(6, 100006, NOW(), 'Traveling to a different destination', 750.00, 'Pending'),
(7, 100007, NOW(), 'Unable to travel', 1200.00, 'Processed'),
(8, 100008, NOW(), 'Change of itinerary', 900.50, 'Rejected'),
(9, 100009, NOW(), 'Personal reasons', 1100.00, 'Processed'),
(10, 100010, NOW(), 'Weather conditions', 650.00, 'Pending');





select * 
from Trains_Info 
where Available_seats > 0;

-- List all trains that have available seats greater than 200
select train_name, available_seats 
from trains_info 
where available_seats > 200;

-- Find all bookings that are in the "Waiting list" status.
select booking_id, passenger_id, booking_status 
from booking_info 
where booking_status = "waiting list";

-- Get the total amount of payments processed successfully
select sum(amount) as totally_processed
from payments_info
where payment_status = "success";

-- Count the number of stations located in each state.
select state, count(*) as no_of_station
from stations_info
group by state
order by no_of_station desc;

-- List the cancellation details for all bookings with a refund amount greater than 1000.
select CI.cancellation_id, BI.booking_id,BI.passenger_id, PI.name ,CI.refund_amount
from cancellation_info as CI
INNER JOIN booking_info as BI on CI.booking_id = BI.booking_id
INNER JOIN passenger_info as PI on PI.passenger_id = BI.passenger_id
where CI.refund_amount > 1000;


-- Calculate the total refund amount for all cancelled bookings
select sum(refund_amount)  from cancellation_info 
where booking_id in (select Booking_id from booking_info where booking_status ='cancelled');

-- Find the names of passengers who have never made a booking
create view never_booking as
select name
from passenger_info
where Passenger_id not in (select Passenger_id from Booking_Info);
select* from never_booking;

-- Retrieve all actions logged for a specific user, given their User ID.
delimiter $$
create procedure action_logged(in id int)
begin
select log_id, user_id,action, details 
from Audit_log 
where user_id  = id;

end $$
delimiter ;
call action_logged(111);
call action_logged(116);













