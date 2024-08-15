/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Product_Id]
      ,[Quantity]
      ,[Product_Name]
      ,[Price]
      ,[numberofsells]
  FROM [SuperMarket].[dbo].[Product]

SELECT Product_Id, Quantity, Price, Product_Name, numberofsells
FROM     Product
order BY numberofsells DESC ; 