-- Create Schema beanscene if it does not exist
CREATE SCHEMA IF NOT EXISTS beanscene;
USE beanscene;

-- Create if not exists Table Users
CREATE TABLE Users (
  Userid INT NOT NULL,
  FirstName VARCHAR(45) NULL,
  LastName VARCHAR(45) NULL,
  UserName VARCHAR(45) NULL,
  UserPassword VARCHAR(45) NULL,
  UserRole VARCHAR(45) NULL,
  PRIMARY KEY (Userid)
);


-- Create Table Areas
CREATE TABLE Areas (
  AreaId INT NOT NULL,
  AreaName VARCHAR(45) NULL,
  Capacity INT NULL,
  PRIMARY KEY (AreaId)
);

-- Create Table Sittings
CREATE TABLE Sittings (
  SittingId INT NOT NULL,
  SittingName VARCHAR(45) NULL,
  SittingType VARCHAR(45) NULL,
  PRIMARY KEY (SittingId)
);

 

-- Create Table RTables
CREATE TABLE RTables (
  TableId INT NOT NULL,
  TableName VARCHAR(45) NULL,
  Areas_AreaId INT NOT NULL,
  PRIMARY KEY (TableId, Areas_AreaId),
  CONSTRAINT fk_RTables_Areas1
    FOREIGN KEY (Areas_AreaId)
    REFERENCES Areas (AreaId)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- Create Table Customers
CREATE TABLE Customers (
  CustomerId INT NOT NULL,
  FirstName VARCHAR(45) NULL,
  LastName VARCHAR(45) NULL,
  Email VARCHAR(45) NULL,
  Phone VARCHAR(45) NULL,
  PRIMARY KEY (CustomerId)
);




-- Create Table Reservations
CREATE TABLE Reservations (
  ReservationID INT NOT NULL,
  SittingDate DATE NULL,
  SittingTime TIME NULL,
  EndTime TIME NULL,
  NumberOfGuests INT NULL,
  ReservationStatus VARCHAR(45) NULL,
  Sittings_SittingId INT NOT NULL,
  RTables_TableId INT NOT NULL,
  Customers_CustomerId INT NOT NULL,
  PRIMARY KEY (ReservationID, Sittings_SittingId, RTables_TableId, Customers_CustomerId),
  CONSTRAINT fk_Reservations_Sittings1
    FOREIGN KEY (Sittings_SittingId)
    REFERENCES Sittings (SittingId)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_Reservations_RTables1
    FOREIGN KEY (RTables_TableId)
    REFERENCES RTables (TableId)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_Reservations_Customers1
    FOREIGN KEY (Customers_CustomerId)
    REFERENCES Customers (CustomerId)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- Create Table Permissions
CREATE TABLE Permissions (
  PermissionId INT NOT NULL,
  TableName VARCHAR(45) NULL,
  CanCreate VARCHAR(45) NULL,
  CanRead VARCHAR(45) NULL,
  CanUpdate VARCHAR(45) NULL,
  CanDelete VARCHAR(45) NULL,
  Users_Userid INT NOT NULL,
  PRIMARY KEY (PermissionId),
  CONSTRAINT fk_Permissions_Users
    FOREIGN KEY (Users_Userid)
    REFERENCES Users (Userid)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

