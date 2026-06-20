/*
===============================================================================================================================
Create Database 
===============================================================================================================================
Script Purpose:
    This scripts create a new database named 'OLA' after checking if it already exists. 
    If the database exists, it is dropped and recreated.

WARNING:
    Running this script will drop the entiire 'OLA' databse if it exists.
    All data in the databse will be peermanently deleted. Proceed with caution and
    ensure you have proper backups before running this script.
*/



-- Drop and recreate the 'OLA' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'OLA')
BEGIN
    ALTER DATABASE OLA SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE OLA;
END;

  
-- Create the 'DataWarehouse' database
CREATE DATABASE OLA;





