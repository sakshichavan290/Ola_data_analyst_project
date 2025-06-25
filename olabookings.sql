CREATE DATABASE ola;
USE ola;

SELECT COUNT(*) FROM bookings;

SELECT * FROM bookings;

-- 1. Retrieve all successful bookings:
SELECT * FROM bookings
WHERE Booking_Status='Success';

-- 2. Find the average ride distance for each vehicle type:
SELECT 
Vehicle_type,
AVG(Ride_distance) as avg_distance
FROM bookings
GROUP BY Vehicle_type;

-- 3. Get the total number of cancelled rides by customers:
SELECT COUNT(*) FROM bookings
WHERE Booking_Status='Canceled by Customer';

-- 4. List the top 5 customers who booked the highest number of rides:
SELECT
Customer_ID,
COUNT(Booking_ID) as total_rides
FROM bookings
GROUP BY Customer_ID
ORDER BY total_rides DESC LIMIT 5;

-- 5. Get the number of rides cancelled by drivers due to personal and car-related issues:
SELECT COUNT(*) FROM bookings
WHERE Canceled_Rides_by_Driver='Personal & Car related issue';

-- 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
SELECT
MAX(Driver_Ratings) AS max_rating,
MIN(Driver_Ratings) AS min_rating
FROM bookings
WHERE Vehicle_Type='Prime Sedan';

-- 7. Retrieve all rides where payment was made using UPI:
SELECT * FROM bookings
WHERE Payment_Method='UPI';

-- 8. Find the average customer rating per vehicle type:
SELECT 
Vehicle_Type,
AVG(Customer_Rating) AS customer_rating
FROM bookings
GROUP BY Vehicle_Type;

-- 9. Calculate the total booking value of rides completed successfully:
SELECT SUM(Booking_Value) AS Total_Successful_value
FROM bookings
WHERE Booking_Status='Success';

-- 10. List all incomplete rides along with the reason:
SELECT 
Booking_ID,
Incomplete_Rides,
Incomplete_Rides_Reason
FROM bookings
WHERE Incomplete_Rides='yes';

-- 11.How many incomplete bookings are there for each reason?
SELECT 
COUNT(Booking_ID) AS INCOMPLETE,
Incomplete_Rides,
Incomplete_Rides_Reason
FROM bookings
WHERE Incomplete_Rides='Yes'
GROUP BY Incomplete_Rides,Incomplete_Rides_Reason;


 -- 12.Identify the day with the highest number of bookings.
 SELECT 
 Date,
 COUNT(*) AS total_bookings
 FROM bookings
 GROUP BY date
ORDER BY total_bookings DESC LIMIT 1; 

-- 13. Find the most common pickup and drop locations.
SELECT  
    Pickup_Location,
    Drop_Location,
    COUNT(*) AS total_trips
FROM bookings
GROUP BY Pickup_Location, Drop_Location
ORDER BY total_trips DESC
LIMIT 5;

-- 14.Compare average V_TAT and C_TAT by vehicle type.
SELECT
Vehicle_Type,
ROUND(AVG(V_TAT),2) AS v_tat,                    
ROUND(AVG(C_TAT),2) AS c_tat
FROM bookings
WHERE Booking_Status='Success'
GROUP BY Vehicle_Type;

-- 15.Show booking trend for weekends vs weekdays.
SELECT
CASE 
	WHEN DAYOFWEEK(date) IN (1,7) THEN 'Weekend'
    ELSE 'Weekday'
END AS day_type,
COUNT(*) AS total_bookings
FROM bookings
GROUP BY day_type;

-- 16.Find out which vehicle type has the highest cancellation rate.
SELECT 
  Vehicle_Type,
  COUNT(*) AS total_bookings,
  COUNT(Canceled_Rides_by_Customer) + COUNT(Canceled_Rides_by_Driver) AS total_cancellations,
  ROUND((COUNT(Canceled_Rides_by_Customer) + COUNT(Canceled_Rides_by_Driver)) / COUNT(*) * 100, 2) AS cancel_rate
FROM bookings
GROUP BY Vehicle_Type
ORDER BY cancel_rate DESC;

-- 17.Get the average driver rating for each hour of the day.
SELECT 
HOUR(Time) AS Hour_of_day,
	ROUND(AVG(Driver_Ratings),2) AS avg_driver_ratings
FROM bookings
GROUP BY Hour_of_day
ORDER BY Hour_of_day;

-- 18.Get the average booking value per vehicle type.
SELECT 
Vehicle_Type,
ROUND(AVG(Booking_value),2) AS avg_booking_value
FROM bookings
WHERE Booking_Status='Success'
GROUP BY Vehicle_Type;

-- 19.Count the number of rides completed by each payment method.
SELECT 
Payment_Method,
COUNT(*) AS total_completed_rides
FROM bookings
WHERE Booking_Status='Success'
GROUP BY Payment_Method
ORDER BY total_completed_rides DESC;

-- 20.What is the average booking value per customer?
SELECT 
Customer_ID,
ROUND(AVG(Booking_Value)) AS avg_booking_value
FROM bookings
WHERE Booking_Status='Success'
GROUP BY Customer_ID
ORDER BY avg_booking_value DESC;