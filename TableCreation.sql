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
	DestinationStreet varchar(255) DEFAULT NULL,
	DestinationNum varchar(255) DEFAULT NULL,
	
	DatePing DATE DEFAULT NULL,
	TimePing TIME DEFAULT NULL,
    
	DriverID int DEFAULT NULL,
	TruckID int DEFAULT NULL,
	
	PRIMARY KEY (GpsID),
	
	Key DriverID (DriverID),
	Key TruckID (TruckID)
);





