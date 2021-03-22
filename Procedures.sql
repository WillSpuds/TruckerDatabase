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
	
CREATE PROCEDURE searchVehichle(vehichleID int, dayOfWeek DATE)
    BEGIN
        SELECT Trucks.TruckID, Trucks.TruckLiscence, Drivers.DriverName, Gps.PostCode, Gps.DestinationStreet, Gps.DestinationNum, Gps.DatePing, Gps.TimePing FROM Gps
		
		LEFT JOIN Trucks On Gps.TruckID = Trucks.TruckID
		RIGHT JOIN Drivers ON Gps.DriverID = Drivers.DriverID
		
		Where Gps.TruckID = vehichleID
		and DatePing = dayOfWeek;		
    END//
	
DELIMITER  ;