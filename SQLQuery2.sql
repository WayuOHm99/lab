--ตาราง room
CREATE TABLE room
(
    room_id CHAR(3) PRIMARY KEY,
    room_name VARCHAR(50) NOT NULL,
    room_type VARCHAR(50) NOT NULL,
    room_price MONEY NOT NULL
);

--ตาราง customer
CREATE TABLE customer
(
    customer_id VARCHAR(5) PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    lastname VARCHAR(20) NOT NULL,
    email_address VARCHAR(30) NOT NULL,
    phone_number VARCHAR(11) NOT NULL,
    Id_card VARCHAR(13) NOT NULL
);

--ตาราง Rental
CREATE TABLE Rental (
    customer_id VARCHAR(5) NOT NULL,
    room_id CHAR(3) NOT NULL,
    checkin_date DATETIME NOT NULL,
    checkout_date DATETIME NULL,
    PRIMARY KEY (customer_id, room_id, checkin_date),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (room_id) REFERENCES room(room_id)
);