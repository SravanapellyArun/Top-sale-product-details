--This project is about the sales data of supermarket

--Which product have Highest Sales 
--Number of Customers bought that product 
--How many sales & along with date
--What is the Quantity of that product & Category
  

select 
date,product_name,product_category,count(customer_name) as num_of_customer,sum(sales_per_day) as total_sales,
sum(quantity) as quantity_sale
from Projects.dbo.Super_market 
group by date,product_name,product_category 
order by sum(sales_per_day) DESC