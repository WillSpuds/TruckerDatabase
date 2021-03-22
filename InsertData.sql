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


INSERT INTO Gps (GpsID, PostCode, DestinationStreet, DestinationNum, DatePing, TimePing, DriverID, TruckID) 
values
(1, 'CF48 1BL', 'Default_Street', '13', '2020-12-18', '09:55:00', 1, 1),
(2, 'B45 9AL', 'Default_Street', '44', '2020-12-18', '11:40:00', 7, 2),
(3, 'LE7 2FL', 'Default_Street', '34', '2020-12-18', '15:12:00', 8, 3),

(4, 'M32 9FD', 'Default_Street', '53', '2020-12-19', '10:20:00', 3, 3),
(5, 'WV11 3RZ', 'Default_Street', '34', '2020-12-19', '13:11:00', 2, 4),
(6, 'LL58 8RD', 'Default_Street', '1', '2020-12-19', '14:13:00', 8, 5),

(7, 'W1H 2HW', 'Default_Street', '65', '2020-12-20', '09:15:00', 5, 5),
(8, 'RH1 3AU', 'Default_Street', '4B', '2020-12-20', '12:40:00', 8, 4),
(9, 'L28 4EW', 'Default_Street', '37', '2020-12-20', '14:45:00', 4, 3),

(10, 'IV24 3BW', 'Default_Street', '46', '2020-12-21', '09:55:00', 1, 2),
(11, 'LS19 7BA', 'Default_Street', '122', '2020-12-21', '10:15:00', 3, 1),
(12, 'LE16 7JS', 'Default_Street', 'The Ritz', '2020-12-21', '16:12:00', 4, 4),

(13, 'TQ14 8RB', 'Default_Street', '85', '2020-12-22', '11:55:00', 7, 2),
(14, 'IV21 2AN', 'Default_Street', '12', '2020-12-22', '12:30:00', 10, 5),
(15, 'S98 1PT', 'Default_Street', '4', '2020-12-22', '13:15:00', 6, 4),

(16, 'RG30 9LR', 'Default_Street', '84', '2020-12-23', '09:45:00', 9, 1),
(17, 'TR8 5DH', 'Default_Street', '5A', '2020-12-23', '15:40:00', 10, 2),
(18, 'LL23 7TL', 'Default_Street', '67', '2020-12-23', '16:15:00', 4, 4),

(19, 'DE45 1BB', 'Default_Street', '5', '2020-12-24', '10:15:00', 1, 4),
(20, 'HA0 3JN', 'Default_Street', '156', '2020-12-24', '11:40:00', 7, 3),
(21, 'WF5 0DP', 'Default_Street', '35', '2020-12-24', '15:30:00', 8, 2);


