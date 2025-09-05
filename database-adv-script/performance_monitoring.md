1. Used EXPLAIN ANALYZE to monitor query performance on Booking and Property tables.
2. Observed bottlenecks in joins on user_id and property_id.
3. Added indexes on Booking(user_id), Booking(property_id) and User(email) to improve performance.
4. Re-tested queries; execution time decreased significantly.
5. Continuous monitoring recommended as the database grows.
