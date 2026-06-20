
/*
===============================================================================================================================
View Testing Script
===============================================================================================================================
Script Purpose:
    This script validates the analytical views created for the
    Ola Ride Booking Analysis project.

    The queries in this file are used to verify that each view
    returns the expected results and accurately answers the
    associated business question.

    This script is intended for testing and quality assurance
    purposes only and does not modify any data.

Usage:
    - Execute after running business_questions_analysis.sql.
    - Review the output of each query to ensure data accuracy.
    - Use the results for validation before reporting and dashboard creation.

===============================================================================================================================
*/

-- Test 1: Successful Bookings
SELECT * FROM Successful_Bookings;


-- Test 2: Average Ride Distance by Vehicle Type
SELECT * FROM Ride_Distance_For_Each_Vehicle;


-- Test 3: Total Canceled Rides by Customer
SELECT * FROM Total_Canceled_Rides_By_Customer;


-- Test 4: Top 5 Customers
SELECT * FROM Top_5_Customers;


-- Test 5: Driver Cancellations Due to Personal & Car Issues
SELECT * FROM Canceled_By_Driver_PC_Issues;


-- Test 6: Max & Min Driver Rating for Prime Sedan
SELECT * FROM Max_Min_Rating_For_Prime_Sedan;


-- Test 7: UPI Payments
SELECT * FROM UPI_Payments;


-- Test 8: Average Customer Rating by Vehicle Type
SELECT * FROM AVG_Customer_Rating_VehicleType;


-- Test 9: Total Successful Ride Value
SELECT * FROM Total_SuccessfulRide_Value;


-- Test 10: Incomplete Rides
SELECT * FROM Incomplete_Rides;


