-- Partition Booking table by start_date
CREATE TABLE Booking_2024 PARTITION OF Booking
FOR VALUES FROM ('2024-01-01') TO ('2024-12-31');

CREATE TABLE Booking_2025 PARTITION OF Booking
FOR VALUES FROM ('2025-01-01') TO ('2025-12-31');

-- Query on partitioned table
SELECT * FROM Booking
WHERE start_date BETWEEN '2025-01-01' AND '2025-03-31';
