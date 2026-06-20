/*
=============================================================================================================================
Data Cleaning 
=============================================================================================================================
Script Purpose:
    This Script performs cleaning of data for consistency, accuracy,
    and standardization. It includes : 
    - Converting empty string sinto NULL.
    - Data standardization and consistency.
  
Usage Notes:
    - Run these after data loading.
    - Investigate and resolve any discrepancies fround during the checks.
=============================================================================================================================
*/


-- Converting empty string('') --> NULL
SELECT * FROM bookings;

==============================================================================================================
-- Numeric columns: data is stored as text
==============================================================================================================
-- Convert emptyt strings them into NULL.
-- columns--> [Avg_VTAT, Avg_CTAT, Driver_Rating, Customer_Rating, Booking_Value, Ride_Distance, ]

-- -----------------------------------------------------------------------------------------------------------
-- Turning ON safe update mode for this session only:
SET SQL_SAFE_UPDATES = 1;
-- -----------------------------------------------------------------------------------------------------------
UPDATE bookings SET Driver_Rating     = NULL WHERE Driver_Rating     = '';
UPDATE bookings SET Customer_Rating   = NULL WHERE Customer_Rating   = '';
UPDATE bookings SET Avg_VTAT          = NULL WHERE Avg_VTAT          = '';
UPDATE bookings SET Avg_CTAT          = NULL WHERE Avg_CTAT          = '';
UPDATE bookings SET Booking_Value     = NULL WHERE Booking_Value     = '';
UPDATE bookings SET Ride_Distance     = NULL WHERE Ride_Distance     = '';

-- After cleaning we change the datatype:
ALTER TABLE bookings
    MODIFY COLUMN Driver_Rating DECIMAL(3,1),
    MODIFY COLUMN Customer_Rating DECIMAL(3,1),
    MODIFY COLUMN Avg_VTAT DECIMAL(5,2),
    MODIFY COLUMN Avg_CTAT DECIMAL(5,2),
	  MODIFY COLUMN Booking_Value DECIMAL(10,2),
    MODIFY COLUMN Ride_Distance DECIMAL(10,2);
-- Check for the changes:
Describe bookings;

==============================================================================================================
## Non_Numeric Columns: empty string('') means "not applicable" 
==============================================================================================================
-- Convert emptyt strings them into NULL.
-- columns--> [Reason_for_Cancelling_by_Driver, Reason_for_Cancelling_by_Customer, Incomplete_Rides_Reason, Payment_Method]

UPDATE bookings SET Reason_for_Cancelling_by_Driver = NULL WHERE Reason_for_Cancelling_by_Driver IN ('');
UPDATE bookings SET Reason_for_Cancelling_by_Customer = NULL WHERE Reason_for_Cancelling_by_Customer IN ('');
UPDATE bookings SET Incomplete_Rides_Reason  = NULL WHERE Incomplete_Rides_Reason  IN ('');
UPDATE bookings SET Payment_Method = NULL WHERE Payment_Method IN ('');

-- ------------------------------------------------------------------------------------------------------------
-- Turning OFF safe update mode:
SET SQL_SAFE_UPDATES = 0;
-- ------------------------------------------------------------------------------------------------------------

===============================================================================================================
-- Verify what's left
===============================================================================================================
SELECT 
    COUNT(*) AS Total_Rows,                                                                 -- 49999
    SUM(Driver_Rating IS NULL)   AS Null_Driver_Rating,                                     -- 16515
    SUM(Customer_Rating IS NULL)   AS Null_Customer_Rating,                                 -- 16515
    SUM(Avg_VTAT IS NULL) AS Null_VTAT,                                                     -- 16515
	SUM(Avg_CTAT IS NULL) AS Null_CTAT,                                                       -- 16515
    SUM(Booking_Value IS NULL) AS Null_Booking_Value,                                       -- 16515
    SUM(Ride_Distance IS NULL) AS Null_Ride_Distance,                                       -- 16515
    SUM(Reason_for_Cancelling_by_Driver IS NULL)  AS Null_Driver_Cancellation_Reason,       -- 40389
    SUM(Reason_for_Cancelling_by_Customer IS NULL)  AS Null_Customer_Cancellation_REason,   -- 46200
    SUM(Incomplete_Rides_Reason IS NULL) AS Null_Incomplete_Ried_Reason,                    -- 46893
    SUM(Payment_Method IS NULL) AS Null_Payment_Method                                      -- 16515
FROM bookings;

--  ---------------------------------------------------------------------------------------------------------
-- Data is Successfully cleaned 
-- ----------------------------------------------------------------------------------------------------------

