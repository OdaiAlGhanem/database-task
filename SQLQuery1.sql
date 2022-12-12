CREATE DATABASE TASK;

CREATE TABLE Customer (

CustomerID int ,
FirstName varchar(20),
LastName varchar (20),
Phone numeric(10),
Country varchar(20),
Email varchar(20),

);
CREATE TABLE Orders (
OrderID int,
CustomerID int,
OrderCountry varchar(20),
StoreID int ,

);
CREATE TABLE Product (

ProductID int,
ProductName varchar(20),
Productmodel numeric ,

);
CREATE TABLE Employee (

EmployeeID int ,
FirstName varchar(20),
LastName varchar (20),
Phone numeric(10),
Country varchar(20),
Email varchar(20),

);