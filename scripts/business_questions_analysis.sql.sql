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
DROP VIEW IF EXISTS Successful_Bookings;

  
CREATE VIEW Successful_Bookings AS
SELECT
  *
FROM bookings
WHERE Booking_Status = "Success";


-- ----------------------------------------------------------------------------------------------------------

-- 2.  Find the average ride distance for each vehicle type:
DROP VIEW IF EXISTS Ride_distance_for_Each_vehicle;

  
CREATE VIEW Ride_distance_for_Each_vehicle AS
SELECT
  Vehicle_Type,
  AVG(Ride_Distance) as Avg_Distance 
FROM bookings
GROUP BY Vehicle_Type;


-- ----------------------------------------------------------------------------------------------------------

-- 3.  Get the total number of  canceled rides by customers:
DROP VIEW IF EXISTS Total_canceled_rides_by_cust;


CREATE VIEW Total_canceled_rides_by_cust AS
SELECT 
  COUNT(*) AS Total_Canceled_rides 
FROM bookings
WHERE Booking_Status = "Cancelled by Customer";


-- ----------------------------------------------------------------------------------------------------------

-- 4.  List the top 5 customers who booked the heighest number of rides:
DROP VIEW IF EXISTS Top_5_Customers;

  
CREATE VIEW Top_5_Customers AS
SELECT 
  Customer_ID,
  Count(Booking_ID) AS Total_Rides
FROM bookings
GROUP BY Customer_ID
ORDER BY Total_Rides DESC
LIMIT 5;

  
-- ----------------------------------------------------------------------------------------------------------

-- 4.  Get the number of rides canceled by drivers due to personal and car-related issues:
DROP VIEW IF EXISTS Canceled_by_Driver_PC_issues;

  
CREATE VIEW Canceled_by_Driver_PC_issues AS
SELECT 
  COUNT(*) 
FROM bookings
WHERE Reason_for_Cancelling_by_Driver iN ("Personal & Car related issues");


-- ----------------------------------------------------------------------------------------------------------

-- 6.  Find the mximum and minimum driver ratings for prime Sedan bookings:
DROP VIEW IF EXISTS max_min_rating_for_Prime_Sedan;

  
CREATE VIEW max_min_rating_for_Prime_Sedan AS
SELECT
  MAX(Driver_Rating) AS Max_Rating,
  MIN(Driver_Rating) AS Min_Rating
FROM bookings
WHERE Vehicle_Type = "Prime Sedan";


-- -----------------------------------------------------------------------------------------------------------

-- 7.  Retreive all rides where payment was made usisng UPI:
DROP VIEW IF EXISTS UPI_Payments;

  
CREATE VIEW UPI_Payments AS
SELECT * FROM bookings
WHERE Payment_Method = "UPI";


-- -----------------------------------------------------------------------------------------------------------

-- 8.  Find the average customer rating per vehicl type:
DROP VIEW IF EXISTS AVG_customer_rating_vehicletype;

  
CREATE VIEW AVG_customer_rating_vehicletype AS
SELECT
  Vehicle_Type,
  AVG(Customer_Rating) AS Avg_Customer_Rating
FROM bookings
GROUP BY Vehicle_Type;


-- -----------------------------------------------------------------------------------------------------------

-- 9.  Calculate the total booking value of rides completed successfully:
DROP VIEW IF EXISTS Total_SuccessfulRide_Value;

  
CREATE VIEW Total_SuccessfulRide_Value AS
SELECT
  SUM(Booking_Value) AS Total_Booking_Value
FROM bookings
WHERE Booking_Status = "Success";


-- -----------------------------------------------------------------------------------------------------------

#10.  List all the incompelte rides along with reason:
DROP VIEW IF EXISTS Incomplete_Rides;
  
CREATE VIEW Incomplete_Rides AS
SELECT 
  Booking_ID,
  Incomplete_Rides_Reason
FROM bookings
WHERE Incomplete_Rides = 1;


-- -----------------------------------------------------------------------------------------------------------
