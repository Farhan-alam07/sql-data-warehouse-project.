



/*
===========================================================
CREATE DATABASE AND SCHEMAS
===========================================================
SCRIPT PURPOSE:
This script creates a new database named 'DataWarehouse' after checking if it already exists.
If the database exists, it is dropped and recreated, additionally, the script sets up three schemas
within the database: 'bronze', 'silver', 'gold'.

WARNING: 
    Running this script will drop the entire 'DataWarehouse' database if it exists.
    All data in the database will be permanently deleted. Proceed with caution
    and ensure you have proper backups before running this script.
*/






-- create  database 'Datawarehouse'
use master;
Go

--Drop and recreate the 'DataWarehouse' database
IF EXISTS (select 1 from sys.databases where name = 'DataWarehouse')
BEGIN
     ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	 DROP DATABASE DataWarehouse;

END;
GO

--CREATE THE 'DataWarehouse' database
create Database DataWarehouse;
GO

use DataWarehouse;
GO

--create schemas
create schema bronze;
GO

create schema silver;
GO

create schema gold;
GO
