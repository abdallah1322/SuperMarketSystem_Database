/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Product_Id]
      ,[Quantity]
      ,[Product_Name]
      ,[Price]
  FROM [SuperMarket].[dbo].[Product]

  insert into Product values (1450,20,'apple',10);
  insert into Product values (1754,50,'banana',7.5);
  insert into Product values (1067,100,'pepsi',6.5);
  insert into Product values (2401,30,'chicken',45);
  insert into Product values (1951,43,'tomato',4.5);