CREATE TABLE customers (

	CustomerID INT IDENTITY(1,1),
	FirstName VARCHAR(255) NOT NULL,
	LastName VARCHAR(255) NOT NULL,
	PRIMARY KEY(CustomerID)
);

CREATE TABLE orders (
	OrderID INT IDENTITY(1,1),
	CustomerID INT NOT NULL,
	soldQuantity int NOT NULL,
	PRIMARY KEY(OrderID),
	FOREIGN KEY (CustomerID) REFERENCES customers
);

CREATE TABLE products (
	ProductID INT IDENTITY(1,1),
	OrderID INT,
	Names VARCHAR(255) NOT NULL,
	price INT NOT NULL,
	PRIMARY KEY (ProductID),
	FOREIGN KEY (OrderID) REFERENCES Orders
);

INSERT INTO customers(FirstName, LastName)
VALUES ('odai','alghanem'), ('ali','issa');

INSERT INTO orders (CustomerID, soldQuantity)
VALUES (1,3), (1,4), (1,2), (2,5);

INSERT INTO products (OrderID, Names, price)
VALUES (1,'konafa',12), (1,'baklawa',24), (2,'gato',12), (3,'harisa',12),(3,'betefour',12), (4,'warbat',12), (4,'maamoul',6), (4,'kaaek',6);

INSERT INTO customers (FirstName, LastName)
VALUES ('ali','issa');

select * from customers
JOIN orders ON customers.CustomerID = orders.CustomerID
JOIN products ON products.OrderID = orders.OrderID;


select * from customers
LEFT JOIN orders ON customers.CustomerID = orders.CustomerID
LEFT JOIN products ON products.OrderID = orders.OrderID;