CREATE TABLE sellproduct
(
  Product_ID INT NOT NULL,
  SSN INT NOT NULL,
  PRIMARY KEY (Product_ID, SSN),
  FOREIGN KEY (Product_ID) REFERENCES Customer(SSN),
  FOREIGN KEY (SSN) REFERENCES Product(Product_ID)
);
