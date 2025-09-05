-- 1. INNER JOIN: retrieve all bookings with respective users
SELECT b.booking_id, u.user_id, u.name, b.property_id, b.start_date, b.end_date
FROM Booking b
INNER JOIN User u ON b.user_id = u.user_id;

-- 2. LEFT JOIN: retrieve all properties with their reviews
SELECT p.property_id, p.name, r.review_id, r.rating
FROM Property p
LEFT JOIN Review r ON p.property_id = r.property_id;

-- 3. FULL OUTER JOIN: retrieve all users and all bookings
SELECT u.user_id, u.name, b.booking_id, b.property_id
FROM User u
FULL OUTER JOIN Booking b ON u.user_id = b.user_id;
