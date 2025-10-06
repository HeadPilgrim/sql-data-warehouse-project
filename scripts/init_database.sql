/*
===============================================================================
WARNING: THIS SCRIPT WILL DROP THE 'DataWarehouse' DATABASE IF IT EXISTS.
         Dropping the database will permanently delete all data, schemas,
         tables, and objects within it. Ensure you have backups if needed.
         Proceed only if you intend to recreate the database from scratch.
===============================================================================
Script: DataWarehouse Database and Schema Creation
Description: This script drops and recreates the 'DataWarehouse' database if it exists,
             then creates three schemas (bronze, silver, gold) for organizing data.
             The 'bronze' schema is intended for raw data,
             'silver' for cleaned/transformed data,
             and 'gold' for aggregated/analytical data.
===============================================================================
*/

-- Check if the DataWarehouse database exists
IF EXISTS (SELECT name FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    -- Set the database to single-user mode and rollback immediate to drop it
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
    PRINT 'DataWarehouse database dropped successfully.';
END
GO

-- Create the DataWarehouse database
CREATE DATABASE DataWarehouse;
PRINT 'DataWarehouse database created successfully.';
GO

-- Use the DataWarehouse database
USE DataWarehouse;
GO

-- Create the bronze schema
CREATE SCHEMA bronze;
GO

-- Create the silver schema
CREATE SCHEMA silver;
GO

-- Create the gold schema
CREATE SCHEMA gold;
GO
