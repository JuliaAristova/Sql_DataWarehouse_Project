/*
=======================================================
Create Database and Schemas
=======================================================
Script purpose:
	This script creates a new database named 'DataWarehouse' after checking 
	if it is already exists. If the database ixists, it is dropped and recreated. 
	Additionally, the script sets up three schemas within the database:
	'bronze', 'silve', and 'gold'.

WARNING:
	Running this script will drop the entire 'DataWarehouse' database it it exists.
	All data in the database will be permanently deleted. Proceed with caution
	and ensure you have proper backups before running this script.
*/

USE master;
GO
--Drop and recreate the 'DataWarehouse' database 
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')

BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

-- create 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO
--create Schemas

Create SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
