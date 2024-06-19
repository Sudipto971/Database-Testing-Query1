-- database create
CREATE DATABASE database_assignment;

-- customer table create
CREATE TABLE customers(

first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
customer_dob DATE NOT NULL,
phone VARCHAR(50),
address VARCHAR(50) NOT NULL,
city VARCHAR(50) NOT NULL,
state VARCHAR(50) NOT NULL,
points VARCHAR(50)
);

DROP TABLE customers;

-- insert the following customer data:

INSERT INTO customers(first_name, last_name, customer_dob, phone, address, city, state, points) VALUES
('Babara','MacCaffrey','1986-03-28', '781-932-9754', '0 Sage Terrace', 'Waltham', 'MA', '2273'),
('Ines','Brushfield','1986-04-13', '804-427-9456', '14187 Commercial Trail', 'Hampton', 'VA', '947'),
('Freddi','Boagey','1985-02-07', '719-724-7869', ' 251 Springs Junction', 'Colorado Springs', 'CO', '2967'),
('Ambur','Roseburgh','1974-04-14', '407-231-8017', '30 Arapahoe Terrace', 'Orlando', 'FL', '457'),
('Clemmie','Betchley','1973-11-07', '', '5 Spohn Circle', 'Arlington', 'TX', '3675');


-- Show only 2 members whose points are more than 1000.

SELECT * FROM customers WHERE Points BETWEEN '1001' AND '3500';

-- Find the customers whose age is from 1980 to 1990 or points less than 1000.

SELECT * FROM customers WHERE customer_dob BETWEEN '1980-01-01' AND '1990-12-30' OR points BETWEEN '1' AND '1000';


-- Order the customers by points in ascending order.

SELECT * FROM customers ORDER BY points ASC;


--  Find the customer whose name contains 'burgh' using a Regular Expression.

SELECT * FROM customers WHERE first_name REGEXP 'burgh';

-- Find a customer who does not have a phone number.

SELECT * FROM customers WHERE phone REGEXP '';
 
 -- Change the 'Date of Birth' column name to 'dob'

ALTER TABLE customers CHANGE COLUMN date_of_birth dob DATE;

 -- Find the max point holder customer name.

SELECT MAX(points) FROM customers;


-- Execute a query for the following scenario.

SELECT  first_name, points,
CASE
	WHEN points<1000 THEN 'bronze member.'
	WHEN points<2000 THEN 'silver members.'
	WHEN points<3000 THEN 'gold members.'
	ELSE 'platinum Members.'
END AS customer_measurement FROM customers;




