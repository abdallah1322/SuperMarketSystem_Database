/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Customer_Name]
      ,[SSN]
      ,[Phone_Number]
      ,[Building_Number]
      ,[Street]
      ,[City]
      ,[Country]
  FROM [SuperMarket].[dbo].[Customer]

  insert into Customer values ('abdallah',1,'01012035979',24,'gamal','giza','egypt')
  insert into Customer values ('gehad',1123,'01012035479',24,'talbia','giza','egypt');