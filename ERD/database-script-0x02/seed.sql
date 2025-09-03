-- Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, role)
VALUES
(uuid_generate_v4(), 'Alice', 'Smith', 'alice@example.com', 'hash1', 'host'),
(uuid_generate_v4(), 'Bob', 'Brown', 'bob@example.com', 'hash2', 'guest');

-- Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
(uuid_generate_v4(), (SELECT user_id FROM User WHERE first_name='Alice'), 'Cozy Apartment', 'Nice apartment', 'NYC', 100.00);

-- Booking
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
(uuid_generate_v4(), (SELECT property_id FROM Property WHERE name='Cozy Apartment'), (SELECT user_id FROM User WHERE first_name='Bob'), '2025-09-05', '2025-09-10', 500.00, 'confirmed');

-- Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
(uuid_generate_v4(), (SELECT booking_id FROM Booking LIMIT 1), 500.00, 'paypal');

-- Review
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
(uuid_generate_v4(), (SELECT property_id FROM Property LIMIT 1), (SELECT user_id FROM User WHERE first_name='Bob'), 5, 'Great stay!');

-- Message
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
(uuid_generate_v4(), (SELECT user_id FROM User WHERE first_name='Bob'), (SELECT user_id FROM User WHERE first_name='Alice'), 'Hi, looking forward to my stay!');
