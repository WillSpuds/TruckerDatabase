CREATE DATABASE ParcelDelivery;

DELIMITER  //
CREATE PROCEDURE showMorningShifts()
    BEGIN
        SELECT DriverID, DriverName FROM Drivers
        Where DriverShifts = 'Morning';
    END//
	
CREATE PROCEDURE showAllDrivers()
    BEGIN
        SELECT DriverID, DriverName FROM Drivers;
    END//
	
CREATE PROCEDURE driverParcelNumbers(inputName varchar(255))
    BEGIN
        SELECT * FROM Drivers
		Where DriverName = inputName;
    END//
	
CREATE PROCEDURE locateVehicle(vehichleID int, dayOfWeek DATE)
    BEGIN
        SELECT Trucks.TruckID, Trucks.TruckLiscence, Drivers.DriverName, Gps.PostCode, Gps.CurrentRoad, Gps.DatePing, Gps.TimePing FROM Gps
		
		LEFT JOIN Trucks On Gps.TruckID = Trucks.TruckID
		RIGHT JOIN Drivers ON Gps.DriverID = Drivers.DriverID
		
		Where Gps.TruckID = vehichleID
		and DatePing = dayOfWeek;		
    END//
	
DELIMITER  ;

CREATE TABLE Drivers (
    DriverID int NOT NULL AUTO_INCREMENT,
    DriverName varchar(255) DEFAULT NULL,
	
	DriverShifts varchar(255) DEFAULT NULL,
	
	NumOfParcelsMon int DEFAULT NULL,
	NumOfParcelsTues int DEFAULT NULL,
	NumOfParcelsWed int DEFAULT NULL,
	NumOfParcelsThurs int DEFAULT NULL,
	NumOfParcelsFri int DEFAULT NULL,
	NumOfParcelsSat int DEFAULT NULL,
	NumOfParcelsSun int DEFAULT NULL,
		
    PRIMARY KEY (DriverID),
	KEY DriverID (DriverID)
);

CREATE TABLE Trucks (
    TruckID int NOT NULL AUTO_INCREMENT,
	TruckLiscence varchar(255) DEFAULT NULL,
    PRIMARY KEY (TruckID)
);

CREATE TABLE Gps (
    GpsID int NOT NULL AUTO_INCREMENT,
	PostCode varchar(255) DEFAULT NULL,
	CurrentRoad varchar(255) DEFAULT NULL,
	
	DatePing DATE DEFAULT NULL,
	TimePing TIME DEFAULT NULL,
    
	DriverID int DEFAULT NULL,
	TruckID int DEFAULT NULL,
	
	PRIMARY KEY (GpsID),
	
	Key DriverID (DriverID),
	Key TruckID (TruckID)
);

INSERT INTO Drivers (DriverID, DriverName, DriverShifts, NumOfParcelsMon, NumOfParcelsTues, NumOfParcelsWed, NumOfParcelsThurs, NumOfParcelsFri, NumOfParcelsSat, NumOfParcelsSun) 
values
(1, 'Vikki B', 'Morning', 55, 45, 34, 25, 77, 24, 33),
(2, 'Will Spuds', 'Afternoon', 67, 34, 20, 44, 32, 23, 76),
(3, 'Ben Thompson', 'Morning', 12, 11, 9, 4, 12, 22, 15),
(4, 'Denim Jeans', 'Afternoon', 33, 33, 34, 32, 34, 32, 12),
(5, 'Matthew Spruce', 'Morning', 10, 10, 10, 109, 10, 10, 10),
(6, 'Ken Wake', 'Afternoon', 22, 32, 35, 54, 23, 32, 37),
(7, 'Tareque G', 'Morning', 44, 0, 24, 54, 0, 33, 0),
(8, 'Colin Trasherton', 'Afternoon', 55, 45, 34, 25, 77, 24, 33),
(9, 'Ruby Underails', 'Morning', 44, 15, 56, 12, 48, 11, 49),
(10, 'Alan Oldman', 'Afternoon', 12, 11, 33, 12, 54, 23, 21);


INSERT INTO Trucks (TruckID, TruckLiscence) 
values
(1, 'BD51 SMR'),
(2, 'WI15 ARC'),
(3, 'BA44 NUT'),
(4, 'LN67 WPS'),
(5, 'PZ65 BYV');


INSERT INTO Gps (GpsID, PostCode, CurrentRoad, DatePing, TimePing, DriverID, TruckID) 
values
(1, 'CF48 1BL', 'Default Street', '2020-12-18', '09:55:00', 1, 1),
(2, 'B45 9AL', 'Cotgrave Lane', '2020-12-18', '11:40:00', 7, 2),
(3, 'LE7 2FL', 'London Drive', '2020-12-18', '15:12:00', 8, 3),

(4, 'M32 9FD', 'Upper Road', '2020-12-19', '10:20:00', 3, 3),
(5, 'WV11 3RZ', 'Clown Street', '2020-12-19', '13:11:00', 2, 4),
(6, 'LL58 8RD', 'Street Circus', '2020-12-19', '14:13:00', 8, 5),

(7, 'W1H 2HW', 'Rat Alley', '2020-12-20', '09:15:00', 5, 5),
(8, 'RH1 3AU', 'Lower Road', '2020-12-20', '12:40:00', 8, 4),
(9, 'L28 4EW', 'Default Road', '2020-12-20', '14:45:00', 4, 3),

(10, 'IV24 3BW', 'Spruce Road', '2020-12-21', '09:55:00', 1, 2),
(11, 'LS19 7BA', 'Bully Drive', '2020-12-21', '10:15:00', 3, 1),
(12, 'LE16 7JS', 'Maple Treeway', '2020-12-21', '16:12:00', 4, 4),

(13, 'TQ14 8RB', 'George Street', '2020-12-22', '11:55:00', 7, 2),
(14, 'IV21 2AN', 'Zoo Lane', '2020-12-22', '12:30:00', 10, 5),
(15, 'S98 1PT', 'Queternion Avenue', '2020-12-22', '13:15:00', 6, 4),

(16, 'RG30 9LR', 'Saints Road', '2020-12-23', '09:45:00', 9, 1),
(17, 'TR8 5DH', 'Tollerton Drive', '2020-12-23', '15:40:00', 10, 2),
(18, 'LL23 7TL', 'Happy Street', '2020-12-23', '16:15:00', 4, 4),

(19, 'DE45 1BB', 'Omega Circus', '2020-12-24', '10:15:00', 1, 4),
(20, 'HA0 3JN', 'Street Street', '2020-12-24', '11:40:00', 7, 3),
(21, 'WF5 0DP', 'Apple Close', '2020-12-24', '15:30:00', 8, 2);


ALTER TABLE Gps
	ADD CONSTRAINT FOREIGN KEY (DriverID) REFERENCES Drivers (DriverID) ON DELETE CASCADE ON UPDATE CASCADE,
	ADD CONSTRAINT FOREIGN KEY (TruckID) REFERENCES Trucks (TruckID) ON DELETE CASCADE ON UPDATE CASCADE;

	
