use Station;

CREATE TABLE stations (
    stationID INT PRIMARY KEY AUTO_INCREMENT,
    stationName VARCHAR(50)
);

CREATE TABLE passengers (
    passengerID INT PRIMARY KEY NOT NULL,
    name VARCHAR(50),
    phoneNumber VARCHAR(20),
    emailAddress VARCHAR(30)
);

CREATE TABLE bookings (
    bookingID INT PRIMARY KEY NOT NULL,
    passengerID INT,
    bookingDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    travelDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    seatNumber INT,
    arrivalStation VARCHAR(50),
    FOREIGN KEY (passengerID)
        REFERENCES passengers (passengerID)
);

CREATE TABLE schedules (
    scheduleID INT NOT NULL,
    stationID INT,
    arrivalTime TIME,
    departureTime TIME,
    FOREIGN KEY (stationID)
        REFERENCES stations (stationID)
);

insert into stations(stationName)
values
('Nairobi'), ('Mombasa'), ('Kigali'), ('Kampala');

insert into passengers(passengerID, name, phoneNumber, emailAddress)
values
(320, 'Oscar', '+25471345', 'oscar.plp@gmail.com'),
(432, 'Mitchelle', '+26119875', 'mish.plp@gmail.com'),
(661, 'Joel', '+27103478', 'maliky@gmail.com'),
(927, 'Charles', '+25515690', 'charly.plp@gmail.com');

alter table bookings
add departureStation varchar(50);

insert into bookings(bookingID, passengerID, seatNumber, arrivalStation, departureStation)
values
(1120, 320, 304, 'Kigali', 'Nairobi'),
(1101, 432, 1960, 'Mombasa', 'Kampala'),
(1108, 661, 2110, 'Nairobi', 'Mombasa'),
(1116, 927, 208, 'Kampala', 'Kigali');

alter table schedules
modify scheduleID varchar(10);

insert into schedules(scheduleID, stationID, arrivalTime, departureTime)
values
('A10', 4, '10:00:30', '01:00:05'),
('B5', 1, '17:25:00', '06:00:00'),
('C4', 3, '21:10:30', '12:30:00'),
('C6', 2, '19:30:25', '07:00:00');