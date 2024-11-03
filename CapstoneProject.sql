create database capstone_DB


select * from [dbo].[SalesDataa]

select product from  SalesDataa
---Total sales of each product---


SELECT Product, distinct SUM(UnitPrice *Quantity) AS TotalSales
from [dbo].[CapstoneSale]
group by product;

----find the number of sales transactions in each region.--

Select  region, sum(quantity) as  numbersale
from [dbo].[CapstoneSale] group by region

------find the highest-selling product by total sales value.-------
select product ,max(quantity) as highest_sold
from CapstoneSale group by product
order by highest_sold desc;

--------calculate total revenue per product.(Revenue=Quantity Sold×Price Per Unit)---------

select product , sum(quantity * unitprice) as RevenuePerProduct
from CapstoneSale group by product  
order by  RevenuePerProduct desc

------calculate monthly sales totals for the current year----

select year(OrderDate) as year,sum(quantity * unitprice) as monthlysale 
from CapstoneSale where year(OrderDate) in ('2023','2024','2022')
group by year(OrderDate)

---find the top 5 customers by total purchase amount.----

SELECT TOP (5) Customer_Id,sum(unitprice) as totalpurchaseamt
FROM CapstoneSale
group by Customer_Id

---------calculate the percentage of total sales contributed by each region.-----
Select region ,
sum(quantity * unitprice) as Regionsale,(sum(Quantity *unitprice)*100) as  SalesPercentage from CapstoneSale 
group by region


