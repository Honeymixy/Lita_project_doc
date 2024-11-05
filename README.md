# Lita_project_doc

## CAPSTONE PROJECT 1: Sales Performance Analysis for a Retail Store
This data project aims to generate insights into the sales performance of a retail store across various regions and products over the given years. By analyzing the parameters in the received data, we seek to gather enough information to make informed decisions and uncover key insights, such as identifying the top-selling products and the best-performing regions.

### Date source 
The Data source is [LITA Capstone Dataset.xlsx] https://canvas.instructure.com/courses/10186984/files/folder/Capstone%20Project?preview=273182802

###  Tools used
 - Microsoft Excel
- Data cleaning
- Analysis
- visualization
- SQL -Structured query language for querying of data
- GitHub for portfolio building

- ### Data Cleaning and preparation
  1. Data Inspection
  2. Handling missing variables
  3. Data Cleaning and formatting
 

###  Create visualizations for the following captured KPI metrics:

- TASK 1: Total sales by product
- Task 2:  Quantity Sold by Region
- Task 3:  Use Excel formulas to calculate metrics such as average sales per product and total revenue by region
- Task 4: Calculate monthly sales totals for the current year.
- Task 5: Identify products with no sales in the last quarter.
- Task 6: Creating an interactive report

## Formular Used
```  select * from SalesData

select product from SalesData
---Total sales of each product---

SELECT Product, SUM(Quantity*UnitPrice) AS TotalSales
from SalesData
group by product;

----find the number of sales transactions in each region.--

Select  region, count(sales) as  number_sale
from SalesData group by region

------find the highest-selling product by total sales value.-------
select product,max(quantity * unitprice) AS Highest_product
from SalesData
group by product
order by Highest_product desc


--------calculate total revenue per product.(Revenue=Quantity Sold×Price Per Unit)---------

select product , sum(quantity * unitprice) as RevenuePerProduct
from SalesData group by product  
order by  RevenuePerProduct desc

------calculate monthly sales totals for the current year----

select year(OrderDate) as year,sum(quantity * unitprice) as monthlysales
from Salesdata where year(OrderDate) in ('2023','2024')
group by year(OrderDate)

---find the top 5 customers by total purchase amount.----

SELECT TOP (5) Customer_Id,sum(unitprice*Quantity) as totalpurchaseamt
FROM SalesData
group by Customer_Id

---------calculate the percentage of total sales contributed by each region.-----
SELECT 
    region,
    SUM(quantity * unitprice) AS RegionSales,
    (SUM(quantity * unitprice) * 100 / (SELECT SUM(quantity * unitprice) FROM SalesData)) AS SalesPercentage
FROM 
    SalesData
GROUP BY 
    region;

--Products with no sales in the last quarter.
SELECT Product
FROM SalesData
WHERE Product NOT IN (
    SELECT DISTINCT Product
    FROM SalesData
    WHERE OrderDate >= DATEADD(QUARTER, -1, GETDATE()) 
)
GROUP BY Product;
 ```

### Visual Analysis and inference
<img src="https://github.com/user-attachments/assets/e68ed583-0b0d-4759-8fc1-0750e698f805" alt="Salesbyproduct" />

## Data visualizations
<img src="https://github.com/user-attachments/assets/8982e377-88b2-4f64-be50-17dad7de8803" alt="Salesbyproduct" width="400" height="280"/> 
<img src="https://github.com/user-attachments/assets/5ab8c94a-fb05-4b33-8996-4b4c5765313c" alt="Produdtsoldbyregion" width="400"/>
<img src="https://github.com/user-attachments/assets/f5342bae-f5f1-486b-96b2-4fb7b7024645" alt="Produdtsoldbyregion" width="400"/>

![image](https://github.com/user-attachments/assets/7eff68ed-367e-4b6f-bfd8-66009567f55c)






 
