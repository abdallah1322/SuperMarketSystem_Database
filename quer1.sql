
create database SuperMarket
go
use SuperMarket
go
CREATE TABLE Admin
(
  Admin_Name VARCHAR NOT NULL,
  Number_Id INT NOT NULL,
  PRIMARY KEY (Number_Id)
);

CREATE TABLE Customer
(
  Customer_Name VARCHAR(20) NOT NULL,
  SSN INT NOT NULL,
  Phone_Number VARCHAR(15) NOT NULL,
  Building_Number INT NOT NULL,
  Street VARCHAR(20)  NULL,
  City VARCHAR(10)  NULL,
  Country VARCHAR(10) NOT NULL,
  PRIMARY KEY (SSN)
);

CREATE TABLE Product
(
  Product_Id INT NOT NULL,
  Quantity INT NOT NULL,
  Product_Name VARCHAR(20) NOT NULL,
  Price FLOAT NOT NULL,
  PRIMARY KEY (Product_Id)
);

CREATE TABLE sign_up_customer
(
  Number_Id INT NOT NULL,
  SSN INT NOT NULL,
  PRIMARY KEY (Number_Id, SSN),
  FOREIGN KEY (Number_Id) REFERENCES Admin(Number_Id),
  FOREIGN KEY (SSN) REFERENCES Customer(SSN)
);

CREATE TABLE Update_data
(
  Number_Id INT NOT NULL,
  SSN INT NOT NULL,
  PRIMARY KEY (Number_Id, SSN),
  FOREIGN KEY (Number_Id) REFERENCES Admin(Number_Id),
  FOREIGN KEY (SSN) REFERENCES Customer(SSN)
);

CREATE TABLE Remove_data
(
  Number_Id INT NOT NULL,
  SSN INT NOT NULL,
  PRIMARY KEY (Number_Id, SSN),
  FOREIGN KEY (Number_Id) REFERENCES Admin(Number_Id),
  FOREIGN KEY (SSN) REFERENCES Customer(SSN)
);

CREATE TABLE Browsing_pro
(
  SSN INT NOT NULL,
  Product_Id INT NOT NULL,
  PRIMARY KEY (SSN, Product_Id),
  FOREIGN KEY (SSN) REFERENCES Customer(SSN),
  FOREIGN KEY (Product_Id) REFERENCES Product(Product_Id)
);

CREATE TABLE Browsing_by_A
(
  Number_Id INT NOT NULL,
  Product_Id INT NOT NULL,
  PRIMARY KEY (Number_Id, Product_Id),
  FOREIGN KEY (Number_Id) REFERENCES Admin(Number_Id),
  FOREIGN KEY (Product_Id) REFERENCES Product(Product_Id)
);

CREATE TABLE Add_product
(
  Number_Id INT NOT NULL,
  Product_Id INT NOT NULL,
  PRIMARY KEY (Number_Id, Product_Id),
  FOREIGN KEY (Number_Id) REFERENCES Admin(Number_Id),
  FOREIGN KEY (Product_Id) REFERENCES Product(Product_Id)
);

CREATE TABLE Update_product
(
  Number_Id INT NOT NULL,
  Product_Id INT NOT NULL,
  PRIMARY KEY (Number_Id, Product_Id),
  FOREIGN KEY (Number_Id) REFERENCES Admin(Number_Id),
  FOREIGN KEY (Product_Id) REFERENCES Product(Product_Id)
);

CREATE TABLE Remove_product
(
  Number_Id INT NOT NULL,
  Product_Id INT NOT NULL,
  PRIMARY KEY (Number_Id, Product_Id),
  FOREIGN KEY (Number_Id) REFERENCES Admin(Number_Id),
  FOREIGN KEY (Product_Id) REFERENCES Product(Product_Id)
);