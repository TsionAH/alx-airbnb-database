-- Initial complex query: joins all details
SELECT b.booking_id, u.name, p.name AS property_name, pay.amount, pay.payment_date
FROM Booking b
JOIN User u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
JOIN Payment pay ON b.booking_id = pay.booking_id;

-- Optimized query: only select needed columns
SELECT b.booking_id, u.name, p.name AS property_name, pay.amount
FROM Booking b
JOIN User u USING(user_id)
JOIN Property p USING(property_id)
JOIN Payment pay USING(booking_id);
