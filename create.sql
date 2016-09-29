DROP SCHEMA lab1 CASCADE;
CREATE SCHEMA lab1;

CREATE TABLE stores
(	storeID INT,
	address VARCHAR(255),
	Manager CHAR(30),
	PRIMARY KEY(storeID)
);

CREATE TABLE customers
(	customerID INT,
	name TEXT,
	address TEXT,
	email TEXT,
	PRIMARY KEY(customerID)
);

CREATE TABLE products
(	productID INT,
	name TEXT,
	category TEXT,
	manufacturer TEXT,
	PRIMARY KEY(productID)
);

CREATE TABLE sales
(	storeID INT,
	customerID INT,
	productID INT,
	date TEXT,
	quantity INT,
	price INT,
	shipped BOOLEAN,
	PRIMARY KEY(storeID, customerID, productID, date)
);
