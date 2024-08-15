--query a
SELECT top 1 Product_Id, Quantity, Price, Product_Name, numberofsells 
FROM Product order BY numberofsells DESC ;

--query b
select top 1 Product_Name , Product_Id , numberofsells 
from Customer , Product 
where dateofsell like '%/5/%' and numberofProducts=0 and numberofsells = 0
order by numberofProducts 

--query c
select top 1 Customer_Name , SSN , numberofproducts 
from Customer 
where dateofsell like '%2022' and numberofProducts = 0
order by numberofProducts DESC

--query d
select top 1 Customer_Name , SSN , numberofproducts 
from Customer 
where dateofsell like '%/5/%'
order by numberofProducts DESC

--query f
SELECT Product_Id, Quantity, Price, Product_Name, numberofsells 
FROM Product order BY numberofsells DESC ;
