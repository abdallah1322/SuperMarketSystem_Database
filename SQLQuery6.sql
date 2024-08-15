/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Admin_Name]
      ,[Number_Id]
  FROM [SuperMarket].[dbo].[Admin]

 ALTER TABLE Admin
DROP COLUMN Admin_Name;
ALTER TABLE Admin
ADD Admin_Name varchar(20);