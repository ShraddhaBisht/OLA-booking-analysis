
/*
=============================================================================================================================
Quality Checks
=============================================================================================================================
Script Purpose:
    This script performs quality cehcks to validate the integrity, consistency,
    and accuracy of the data, These checks assure:
    - Uniqueness of primary key.
    - .

Usage Notes:
    - Run these checks after data loading.
    - Investigate and resolve any discrepancies found during teh checks.
=============================================================================================================================
*/

-- ==============================================================================================
-- Checking datatypes of each column
-- ==============================================================================================
DESCRIBE bookings;


-- ==============================================================================================
-- Check for Data Standardization & Consistency 
-- ==============================================================================================
SELECT DISTINCT Incomplete_Rides_Reason
FROM bookings;

SELECT 
    COUNT(*)                                       AS Total_Rows,
    SUM(Incomplete_Rides_Reason = '')              AS Empty_Strings,
    SUM(Incomplete_Rides_Reason IS NULL)           AS True_NULLs,
    SUM(Incomplete_Rides_Reason NOT IN ('', 'NA')) AS Has_Value
FROM bookings;

-- 46893 empty strings in [Incomplete_Rides_Reason]
-- NO NULL
--------------------------------------------------------------------------------------------------
SELECT DISTINCT Avg_VTAT
FROM bookings;


SELECT 
    COUNT(*)                              AS Total_Rows,
    SUM(Avg_VTAT = '')              AS Empty_Strings,
    SUM(Avg_VTAT IS NULL)           AS True_NULLs,
    SUM(Avg_VTAT NOT IN ('', 'NA')) AS Has_Value
FROM bookings;

-- 16515 empty strings in [Avg_VTAT]
-- NO NULL
