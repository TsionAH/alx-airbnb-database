---

## 1. Database Schema (DDL)

The `schema.sql` file contains the SQL statements to create the following tables:

- **User**: Stores user information (hosts, guests, admins)
- **Property**: Stores property listings linked to hosts
- **Booking**: Stores booking information for users and properties
- **Payment**: Stores payment details for bookings
- **Review**: Stores user reviews for properties
- **Message**: Stores messages exchanged between users

### Key Features

- **Primary Keys** (PK) and **Foreign Keys** (FK) properly defined
- **Constraints** for uniqueness, NOT NULL, and value ranges
- **Indexes** added for optimal query performance
- **Relationships** correctly established for normalized design (3NF)

---

## 2. Sample Data (Seed)

The `seed.sql` file contains SQL `INSERT` statements to populate the database with realistic sample data, including:

- Multiple users (hosts and guests)
- Properties hosted by users
- Bookings made by guests
- Payments for bookings
- Reviews for properties
- Messages exchanged between users

> This ensures the database can be used for testing queries and simulating real-world scenarios.

---

## 3. ER Diagram

The ER diagram is located in the `ERD/` folder:

![ER Diagram](ERD/er_diagram.png)

It shows:

- Entities (tables)
- Primary and foreign keys
- Relationships (1:1, 1:N)

---

## 4. Normalization

The database design follows **Third Normal Form (3NF)**:

- All attributes are atomic (1NF)
- All non-key attributes fully depend on the primary key (2NF)
- No transitive dependencies exist (3NF)

Refer to `normalization.md` for a detailed explanation.

---
