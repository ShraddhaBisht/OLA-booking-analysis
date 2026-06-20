/*
===============================================================================================================================
Business Questions Analysis
===============================================================================================================================
Script Purpose:
    This script contains SQL views developed to answer key business
    questions for the Ola Ride Booking Analysis project.

    The views provide insights into:
    - Booking performance
    - Customer behavior
    - Revenue trends
    - Cancellation patterns
    - Vehicle-type performance
    - Ratings and service quality

Usage:
    - Run the script to create all analytical views.
    - Query the views individually for business reporting and analysis.

===============================================================================================================================
*/


-- 1.  Retreive all successful bookings:
IF OBJECT_ID('Successful_Bookings', 'V') IS NOT NULL
    DROP VIEW Successful_Bookings;
GO
  
CREATE VIEW Successful_Bookings AS
SELECT
  *
FROM bookings
WHERE Booking_Status = "Success";
GO

-- ----------------------------------------------------------------------------------------------------------

-- 2.  Find the average ride distance for each vehicle type:
IF OBJECT_ID('Ride_distance_for_Each_vehicle', 'V') IS NOT NULL
    DROP VIEW Ride_distance_for_Each_vehicle;
GO
  
CREATE VIEW Ride_distance_for_Each_vehicle AS
SELECT
  Vehicle_Type,
  AVG(Ride_Distance) as Avg_Distance 
FROM bookings
GROUP BY Vehicle_Type;
GO

-- ----------------------------------------------------------------------------------------------------------

-- 3.  Get the total number of  canceled rides by customers:
IF OBJECT_ID('Total_canceled_rides_by_cust', 'V') IS NOT NULL
    DROP VIEW Total_canceled_rides_by_cust;
GO

CREATE VIEW Total_canceled_rides_by_cust AS
SELECT 
  COUNT(*) AS Total_Canceled_rides 
FROM bookings
WHERE Booking_Status = "Cancelled by Customer";
GO

-- ----------------------------------------------------------------------------------------------------------

-- 4.  List the top 5 customers who booked the heighest number of rides:
IF OBJECT_ID('Top_5_Customers', 'V') IS NOT NULL
    DROP VIEW Top_5_Customers;
GO
  
CREATE VIEW Top_5_Customers AS
SELECT TOP 5 
  Customer_ID,
  Count(Booking_ID) AS Total_Rides
FROM bookings
GROUP BY Customer_ID
ORDER BY Total_Rides DESC;
GO
  
-- ----------------------------------------------------------------------------------------------------------

-- 4.  Get the number of rides canceled by drivers due to personal and car-related issues:
IF OBJECT_ID('Canceled_by_Driver_PC_issues', 'V') IS NOT NULL
    DROP VIEW Canceled_by_Driver_PC_issues;
GO
  
CREATE VIEW Canceled_by_Driver_PC_issues AS
SELECT 
  COUNT(*) 
FROM bookings
WHERE Reason_for_Cancelling_by_Driver iN ("Personal & Car related issues");
GO

-- ----------------------------------------------------------------------------------------------------------

== 6.  Find the mximum and minimum driver ratings for prime Sedan bookings:
IF OBJECT_ID('max_min_rating_for_Prime_Sedan', 'V') IS NOT NULL
    DROP VIEW max_min_rating_for_Prime_Sedan;
GO
  
CREATE VIEW max_min_rating_for_Prime_Sedan AS
SELECT
  MAX(Driver_Rating) AS Max_Rating,
  MIN(Driver_Rating) AS Min_Rating
FROM bookings
WHERE Vehicle_Type = "Prime Sedan";
GO

-- -----------------------------------------------------------------------------------------------------------

-- 7.  Retreive all rides where payment was made usisng UPI:
IF OBJECT_ID('UPI_Payments', 'V') IS NOT NULL
    DROP VIEW UPI_Payments;
GO
  
CREATE VIEW UPI_Payments AS
SELECT * FROM bookings
WHERE Payment_Method = "UPI";
GO

-- -----------------------------------------------------------------------------------------------------------

-- 8.  Find the average customer rating per vehicl type:
IF OBJECT_ID('AVG_customer_rating_vehicletype', 'V') IS NOT NULL
    DROP VIEW AVG_customer_rating_vehicletype;
GO
  
CREATE VIEW AVG_customer_rating_vehicletype AS
SELECT
  Vehicle_Type,
  AVG(Customer_Rating) AS Avg_Customer_Rating
FROM bookings
GROUP BY Vehicle_Type;
GO

-- -----------------------------------------------------------------------------------------------------------

-- 9.  Calculate the total booking value of rides completed successfully:
IF OBJECT_ID('Total_SuccessfulRide_Value', 'V') IS NOT NULL
    DROP VIEW Total_SuccessfulRide_Value;
GO
  
CREATE VIEW Total_SuccessfulRide_Value AS
SELECT
  SUM(Booking_Value) AS Total_Booking_Value
FROM bookings
WHERE Booking_Status = "Success";
GO

-- -----------------------------------------------------------------------------------------------------------

#10.  List all the incompelte rides along with reason:
IF OBJECT_ID('Incomplete_Rides', 'V') IS NOT NULL
    DROP VIEW Incomplete_Rides;
GO
  
CREATE VIEW Incomplete_Rides AS
SELECT 
  Booking_ID,
  Incomplete_Rides_Reason
FROM bookings
WHERE Incomplete_Rides = 1;
GO

-- -----------------------------------------------------------------------------------------------------------
