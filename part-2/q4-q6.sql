create database company

USE [company]

CREATE TABLE Employee(
    employeeId bigint PRIMARY KEY not NULL,
    employeeName NVARCHAR(50),
)

CREATE TABLE Costumer(
    costumerId bigint PRIMARY KEY not NULL,
    costumerName NVARCHAR(50),
)

CREATE TABLE Orders(
    orderID bigint PRIMARY KEY NOT NULL,
    employeeID bigint NOT NULL,
    costumerID bigint NOT NULL,
    orderName NVARCHAR(50),
    FOREIGN KEY (employeeID) REFERENCES Employee(employeeId),
    FOREIGN KEY (costumerID) REFERENCES Costumer(costumerId)
)

INSERT INTO Employee (employeeId,employeeName) VALUES (1,'ali')
INSERT INTO Employee (employeeId,employeeName) VALUES (2,'reza')
INSERT INTO Employee (employeeId,employeeName) VALUES (3,'mohsen')

INSERT INTO Costumer (costumerId,costumerName) VALUES (1,'abbas')
INSERT INTO Costumer (costumerId,costumerName) VALUES (2,'hossein')
INSERT INTO Costumer (costumerId,costumerName) VALUES (3,'arian')

INSERT INTO Orders (orderID,employeeID,costumerId,orderName) VALUES (1,2,3,'order 3')
INSERT INTO Orders (orderID,employeeID,costumerId,orderName) VALUES (2,1,1,'order 2')
INSERT INTO Orders (orderID,employeeID,costumerId,orderName) VALUES (3,2,1,'order 1')