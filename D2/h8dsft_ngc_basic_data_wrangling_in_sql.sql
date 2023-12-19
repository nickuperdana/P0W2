-- Create database of 'w2d2ngc5' 
CREATE DATABASE w2d2ngc5;

-- create table customer
CREATE TABLE IF NOT EXISTS Customer(
    customer_id SERIAL PRIMARY KEY,
    customer_name varchar NOT NULL,
    city varchar NOT NULL
);

-- create table orders
CREATE TABLE IF NOT EXISTS Orders(
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    FOREIGN KEY (customer_id)
        REFERENCES Customer (customer_id),
    order_date DATE NOT NULL,
    total_amount FLOAT NOT NULL
);

-- input data to table customer
INSERT INTO Customer(customer_name, city)
VALUES
    ('John Doe', 'New York'),
    ('Jane Smith', 'Los Angeles'),
    ('David Johnson', 'Chicago');

-- test the input above
SELECT *
FROM Customer;

-- input data to table orders
INSERT INTO Orders(customer_id, order_date, total_amount)
VALUES
    (1, '2022-01-10', 100.00),
    (1, '2022-02-15', 150.00),
    (2, '2022-03-20', 200.00),
    (3, '2022-04-25', 50.00);

-- test the input above
SELECT *
FROM Orders;