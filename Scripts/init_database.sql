/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'Airbnb' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'original', 'transformed', and 'new'.
	
WARNING:
    Running this script will drop the entire 'Airbnb' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

USE master;
GO

-- Drop and recreate the 'Airbnb' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'Airbnb')
BEGIN
    ALTER DATABASE Airbnb SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE Airbnb;
END;
GO

-- Create the 'Airbnb' database
CREATE DATABASE Airbnb;
GO

USE Airbnb;
GO

-- Create Schemas
CREATE SCHEMA original;
GO

CREATE SCHEMA transformed;
GO

CREATE SCHEMA new;
GO
