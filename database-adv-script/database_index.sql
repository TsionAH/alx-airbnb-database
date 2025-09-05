-- Create indexes for frequently queried columns
CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_user_email ON User(email);
CREATE INDEX idx_property_name ON Property(name);

