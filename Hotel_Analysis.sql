#Question 1
SELECT COUNT(Booking_id) as Total_Number_of_Reservation
FROM hotel.`hotel reservation`;

#Q2
SELECT type_of_meal_plan,COUNT(Booking_ID) as Popular_Meal_Plan
FROM hotel.`hotel reservation`
GROUP BY type_of_meal_plan
ORDER BY COUNT(Booking_ID) DESC
LIMIT 1;

#Q3
SELECT Booking_ID,avg_price_per_room,no_of_children
FROM hotel.`hotel reservation`
WHERE no_of_children >0;

#QUESTION 4
SELECT COUNT(Booking_ID) as Hotel_Reservation_2018
FROM hotel.`hotel reservation`
WHERE RIGHT(arrival_date,4)=2018;

#Q5
SELECT room_type_reserved,COUNT(Booking_ID) as Commonly_Booked_Room
FROM hotel.`hotel reservation`
GROUP BY room_type_reserved;

#Q6
SELECT COUNT(Booking_ID) as booking_on_weekend_nights
FROM hotel.`hotel reservation`
WHERE no_of_weekend_nights>0;

#Q7
SELECT MAX(lead_time) as Highest_Lead_Time, MIN(lead_time) as LOWEST_Lead_Time
FROM hotel.`hotel reservation`;

#Q8
SELECT market_segment_type, COUNT(Booking_ID)as Most_Common_Market_Segment
FROM hotel.`hotel reservation`
GROUP BY market_segment_type
ORDER BY COUNT(Booking_ID) DESC
LIMIT 1;

#Q9
SELECT COUNT(Booking_ID) as Confirmed
FROM hotel.`hotel reservation`
WHERE booking_status='Confirmed';

#Q10
SELECT SUM(no_of_adults) as no_of_adults, SUM(no_of_children) as no_of_children
FROM hotel.`hotel reservation`;

#Q11
SELECT AVG(no_of_weekend_nights) as avg_no_of_weekend_nights
FROM hotel.`hotel reservation`;

#Q12
SELECT Substr(arrival_date,4,7) , COUNT(Booking_ID) as No_of_reservation
FROM hotel.`hotel reservation`
GROUP BY(Substr(arrival_date,4,7));

#Q13
SELECT room_type_reserved, AVG(no_of_weekend_nights) as Avg_no_of_weekend_nights, AVG(no_of_week_nights) as Avg_no_of_week_nights
FROM hotel.`hotel reservation`
GROUP BY room_type_reserved;

#Q14
SELECT COUNT(Booking_ID), room_type_reserved,AVG(avg_price_per_room) as avg_price_per_room
FROM hotel.`hotel reservation`
WHERE no_of_children>0 
GROUP BY room_type_reserved
ORDER BY COUNT(Booking_ID)
LIMIT 1;

#Q15
SELECT market_segment_type,AVG(avg_price_per_room)as highest_avg_price_per_room
FROM hotel.`hotel reservation`
GROUP BY(market_segment_type)
ORDER BY AVG(avg_price_per_room) DESC
LIMIT 1;