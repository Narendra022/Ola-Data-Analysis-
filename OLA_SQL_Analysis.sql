Create Database Ola_data;
use Ola_data;

select * from bookings;

#1. Retrieve all successful bookings:

create view Successful_bookings as 
select * from bookings 
where Booking_status='Success';

#1. Retrieve all successful bookings:
select * from Successful_bookings;


#2. Find the average ride distance for each vehicle type:
Create view average_ride_distance as
select Vehicle_type, avg(Ride_Distance) as average_distance from bookings
group by Vehicle_Type;
# ANSWER
select * from average_ride_distance;


#3. Get the total number of cancelled rides by customers:
create View total_rides_cancelled_by_customers as
select count(*) as  total_cancelled_ride_by_customers 
from bookings
where Booking_Status='Canceled by Customer';
#ANSWER
select * from total_rides_cancelled_by_customers;


#4. List the top 5 customers who booked the highest number of rides:
create view top_5_customers as
select Customer_ID ,Count(Booking_ID) as Total_rides from bookings
group by Customer_ID
order by Total_rides desc
limit 5;
#ANSWER
select *from top_5_customers;


#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
Create view rides_cancelled__by_drivers as
Select Count(Booking_Status) as rides_cancelled_by_drivers
from bookings
where Booking_Status ='Canceled by Driver';
#ANSWER
select * from rides_cancelled__by_drivers;


#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
create view maximum_and_minimum_driver_ratings as
select min(Driver_Ratings) as MIN_Rating, max(Driver_Ratings) As MAX_Ratings from bookings
where Vehicle_Type='Prime Sedan';
#ANSWER 
select * from maximum_and_minimum_driver_ratings;


#7. Retrieve all rides where payment was made using UPI:
create view UPI_Payments as
select * from bookings
where Payment_Method = 'UPI';

#ANSWER
select*from UPI_Payments;


#8. Find the average customer rating per vehicle type:
create view customer_rating_per_vehicle_type AS
select Vehicle_Type ,avg(Customer_Rating) as Average_customer_rating from bookings
group by Vehicle_Type;

#ANSWER
select *from customer_rating_per_vehicle_type;

#9. Calculate the total booking value of rides completed successfully:
create view Total_booking_value_of_sucessful_rides as
select sum(Booking_Value) as Total_booking_value from bookings
where Booking_Status='Success';

#ANSWER
select *from Total_booking_value_of_sucessful_rides;


#10. List all incomplete rides along with the reason:
create view Incomplete_Rides_along_with_Reasons as
select Booking_Id,Incomplete_Rides_Reason From bookings
where Incomplete_Rides='yes';

#ANSWER
select *from Incomplete_Rides_along_with_Reasons;




