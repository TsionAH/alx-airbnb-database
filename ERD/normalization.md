# Database Normalization Steps

Our Airbnb database schema is designed to be in **Third Normal Form (3NF)**:

- **User**: All attributes depend solely on `user_id`.
- **Property**: `host_id` is a foreign key; no redundant attributes.
- **Booking**: Each booking is linked to `User` and `Property`; no transitive dependencies.
- **Payment**: Each payment references only one booking; attributes are atomic.
- **Review**: Each review references one property and one user; no duplication.
- **Message**: Each message references sender and recipient; normalized.

Hence, the database design meets 3NF principles.
