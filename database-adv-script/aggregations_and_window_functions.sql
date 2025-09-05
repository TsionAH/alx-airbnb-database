-- 1. Total number of bookings by each user
SELECT user_id, COUNT(*) AS total_bookings
FROM Booking
GROUP BY user_id
ORDER BY total_bookings DESC;

-- 2. Rank properties based on total number of bookings
SELECT property_id, COUNT(*) AS total_bookings,
       RANK() OVER (ORDER BY COUNT(*) DESC) AS rank
FROM Booking
GROUP BY property_id
ORDER BY rank;

