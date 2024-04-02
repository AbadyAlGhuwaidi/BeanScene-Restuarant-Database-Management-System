-- Script: CRUD_Scripts.sql
-- Purpose: Contains CRUD scripts for the beanscene reservation system
-- Usage: Execute the required script based on the desired operation
-- Note:  the scripts provided are placeholders and you will need to replace the parameter names with actual values when executing the scripts.

-- CREATE SCRIPTS

-- Create User
-- Purpose: Creates a new user in the Users table
-- Parameters: 'John' - User ID, @FirstName - First name, @LastName - Last name, @UserName - Username, @UserPassword - User password, @UserRole - User role
-- Notes: Make sure to provide unique values for User ID
INSERT INTO Users (Userid, FirstName, LastName, UserName, UserPassword, UserRole)
VALUES (@UserId, @FirstName, @LastName, @UserName, @UserPassword, @UserRole);

-- Create Area
-- Purpose: Creates a new area in the Areas table
-- Parameters: @AreaId - Area ID, @AreaName - Area name, @Capacity - Area capacity
-- Notes: Make sure to provide unique values for Area ID
INSERT INTO Areas (AreaId, AreaName, Capacity)
VALUES (@AreaId, @AreaName, @Capacity);

-- Create Reservation
-- Purpose: Creates a new reservation in the Reservations table
-- Parameters: @ReservationID - Reservation ID, @SittingDate - Sitting date, @SittingTime - Sitting start time, @EndTime - Sitting end time, @NumberOfGuests - Number of guests, @ReservationStatus - Reservation status, @Sittings_SittingId - Sitting ID, @RTables_TableId - Table ID, @Customers_CustomerId - Customer ID
-- Notes: Make sure to provide unique values for Reservation ID
INSERT INTO Reservations (ReservationID, SittingDate, SittingTime, EndTime, NumberOfGuests, ReservationStatus, Sittings_SittingId, RTables_TableId, Customers_CustomerId)
VALUES (@ReservationID, @SittingDate, @SittingTime, @EndTime, @NumberOfGuests, @ReservationStatus, @Sittings_SittingId, @RTables_TableId, @Customers_CustomerId);

-- CREATE SCRIPTS

-- Create Sitting
-- Purpose: Creates a new sitting in the Sittings table
-- Parameters: @SittingId - Sitting ID, @SittingName - Sitting name, @SittingType - Sitting type
-- Notes: Make sure to provide unique values for Sitting ID
INSERT INTO Sittings (SittingId, SittingName, SittingType)
VALUES (@SittingId, @SittingName, @SittingType);

-- Create RTable
-- Purpose: Creates a new table in the RTables table
-- Parameters: @TableId - Table ID, @TableName - Table name, @Areas_AreaId - Area ID
-- Notes: Make sure to provide unique values for Table ID
INSERT INTO RTables (TableId, TableName, Areas_AreaId)
VALUES (@TableId, @TableName, @Areas_AreaId);

-- Create Customer
-- Purpose: Creates a new customer in the Customers table
-- Parameters: @CustomerId - Customer ID, @FirstName - First name, @LastName - Last name, @Email - Email, @Phone - Phone number
-- Notes: Make sure to provide unique values for Customer ID
INSERT INTO Customers (CustomerId, FirstName, LastName, Email, Phone)
VALUES (@CustomerId, @FirstName, @LastName, @Email, @Phone);

-- Create Permission
-- Purpose: Creates a new permission in the Permissions table
-- Parameters: @PermissionId - Permission ID, @TableName - Table name, @CanCreate - Can create permission, @CanRead - Can read permission, @CanUpdate - Can update permission, @CanDelete - Can delete permission, @Users_Userid - User ID
-- Notes: Make sure to provide unique values for Permission ID
INSERT INTO Permissions (PermissionId, TableName, CanCreate, CanRead, CanUpdate, CanDelete, Users_Userid)
VALUES (@PermissionId, @TableName, @CanCreate, @CanRead, @CanUpdate, @CanDelete, @Users_Userid);


-- READ SCRIPTS

-- Read User
-- Purpose: Retrieves user information based on the provided User ID
-- Parameters: @UserId - User ID
SELECT * FROM Users WHERE Userid = @UserId;

-- Read Area
-- Purpose: Retrieves area information based on the provided Area ID
-- Parameters: @AreaId - Area ID
SELECT * FROM Areas WHERE AreaId = @AreaId;

-- Read Reservation
-- Purpose: Retrieves reservation information based on the provided Reservation ID
-- Parameters: @ReservationID - Reservation ID
SELECT * FROM Reservations WHERE ReservationID = @ReservationID;

-- Read Sitting
-- Purpose: Retrieves sitting information based on the provided Sitting ID
-- Parameters: @SittingId - Sitting ID
SELECT * FROM Sittings WHERE SittingId = @SittingId;

-- Read RTable
-- Purpose: Retrieves table information based on the provided Table ID
-- Parameters: @TableId - Table ID
SELECT * FROM RTables WHERE TableId = @TableId;

-- Read Customer
-- Purpose: Retrieves customer information based on the provided Customer ID
-- Parameters: @CustomerId - Customer ID
SELECT * FROM Customers WHERE CustomerId = @CustomerId;

-- Read Permission
-- Purpose: Retrieves permission information based on the provided Permission ID
-- Parameters: @PermissionId - Permission ID
SELECT * FROM Permissions WHERE PermissionId = @PermissionId;

-- UPDATE SCRIPTS

-- Update User
-- Purpose: Updates user information based on the provided User ID
-- Parameters: @UserId - User ID, @UserName - Updated username
UPDATE Users SET UserName = @UserName WHERE Userid = @UserId;

-- Update Area
-- Purpose: Updates area information based on the provided Area ID
-- Parameters: @AreaId - Area ID, @Capacity - Updated capacity
UPDATE Areas SET Capacity = @Capacity WHERE AreaId = @AreaId;

-- Update Reservation
-- Purpose: Updates reservation information based on the provided Reservation ID
-- Parameters: @ReservationID - Reservation ID, @ReservationStatus - Updated reservation status
UPDATE Reservations SET ReservationStatus = @ReservationStatus WHERE ReservationID = @ReservationID;

-- Update Sitting
-- Purpose: Updates sitting information based on the provided Sitting ID
-- Parameters: @SittingId - Sitting ID, @SittingName - Updated sitting name
UPDATE Sittings SET SittingName = @SittingName WHERE SittingId = @SittingId;

-- Update RTable
-- Purpose: Updates table information based on the provided Table ID
-- Parameters: @TableId - Table ID, @TableName - Updated table name
UPDATE RTables SET TableName = @TableName WHERE TableId = @TableId;

-- Update Customer
-- Purpose: Updates customer information based on the provided Customer ID
-- Parameters: @CustomerId - Customer ID, @FirstName - Updated first name
UPDATE Customers SET FirstName = @FirstName WHERE CustomerId = @CustomerId;

-- Update Permission
-- Purpose: Updates permission information based on the provided Permission ID
-- Parameters: @PermissionId - Permission ID, @CanCreate - Updated CanCreate value
UPDATE Permissions SET CanCreate = @CanCreate WHERE PermissionId = @PermissionId;



-- DELETE SCRIPTS

-- Delete User
-- Purpose: Deletes a user based on the provided User ID
-- Parameters: @UserId - User ID
DELETE FROM Users WHERE Userid = @UserId;

-- Delete Area
-- Purpose: Deletes an area based on the provided Area ID
-- Parameters: @AreaId - Area ID
DELETE FROM Areas WHERE AreaId = @AreaId;

-- Delete Reservation
-- Purpose: Deletes a reservation based on the provided Reservation ID
-- Parameters: @ReservationID - Reservation ID
DELETE FROM Reservations WHERE ReservationID = @ReservationID;

-- Delete Sitting
-- Purpose: Deletes a sitting based on the provided Sitting ID
-- Parameters: @SittingId - Sitting ID
DELETE FROM Sittings WHERE SittingId = @SittingId;

-- Delete RTable
-- Purpose: Deletes a table based on the provided Table ID
-- Parameters: @TableId - Table ID
DELETE FROM RTables WHERE TableId = @TableId;

-- Delete Customer
-- Purpose: Deletes a customer based on the provided Customer ID
-- Parameters: @CustomerId - Customer ID
DELETE FROM Customers WHERE CustomerId = @CustomerId;

-- Delete Permission
-- Purpose: Deletes a permission based on the provided Permission ID
-- Parameters: @PermissionId - Permission ID
DELETE FROM Permissions WHERE PermissionId = @PermissionId;
