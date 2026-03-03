create Database ola;
use ola;
--1.query
Create view  Successful_bookings As
select * from Booking
where Booking_Status='Success';
--1. Retrieve all successfull booking
select * from Successful_bookings




--2.find average ride distance for each vechile type
Create view ride_distance_for_each_vehicle as
select Vehicle_type, avg(Ride_Distance)
as avg_distance from Booking
group by Vehicle_type

--average ride distance
select * from ride_distance_for_each_vehicle




select * from booking 
--3.number of rides cancelled by customer
Create view  Canceled_ride_by_customers As
select count(*) from Booking
where Booking_Status='Canceled by Customer';

select * from Canceled_ride_by_customers


--4. list top 5 customer who booked the highest number of rides
create view top_5_customer as 
select top 5 Customer_ID, count(Booking_ID) as total_rides
from Booking
group by Customer_ID
order by total_rides   
DESC ;
-- creating a view for top_5_customer
select * from top_5_customer;



--5.no of ride canceled by drivers due to personal and car related issue
create view ride_canceled_by_d as
select count(*) from Booking
where Canceled_Rides_by_Driver='Personal & Car related issue';


--6. Find the maximum and minimum driver ratings for prime sedan bookings

select max(Driver_Ratings) as maximum_rating,
min(Driver_Ratings) as minimum_rating
from Booking
where vehicle_Type='Prime Sedan'

--7. retrive all the value where upi method is upi
select * from Booking 
where payment_method='UPI'


--8. find the average customer rating per vehicle type

select Vehicle_type , avg(Customer_Rating) as avg_customer_rating
from Booking
group by Vehicle_type


--9.calculate total booking value of rides completely successfull
select sum(Booking_Value) as total_Successfull_ride_value
from Booking
where Booking_Status='Success'











--8.