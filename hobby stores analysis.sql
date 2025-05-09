/* table 1 */

create table store_data (Row_ID int, Order_ID varchar, Order_Date date, Ship_Date date,
Ship_Mode varchar, Customer_ID varchar, Product_ID varchar, Sales float, Discount float);

select * from store_data;

copy store_data from 'C:\Program Files\PostgreSQL\17\data\datasets\store_data.csv' delimiter ',' csv header;


/* table 2 */

create table master_product (Product_ID varchar, Category varchar, Sub_Category varchar, Product_Name varchar);

select * from master_product;

copy master_product from 'C:\Program Files\PostgreSQL\17\data\datasets\master_product.csv' delimiter ',' csv header;


/* table 3 */

create table master_customer (Customer_ID varchar, Customer_Name varchar, Segment varchar, Country varchar,
City varchar, State varchar, Postal_Code varchar, Region varchar, Age int);

select * from master_customer;

copy master_customer from 'C:\Program Files\PostgreSQL\17\data\datasets\master_customer.csv' delimiter ',' csv header;


/* inner join, left join, right join, full join 
inner join - display records that is present in both Dim and Fact Table
left join - selects all records from the left table (table you are selecting from) and matching records from the right table
right join - selects matching records from left table and all records from the right table
full join - selects all records from both table */

select region, sales
from master_customer
inner join store_data
on master_customer.customer_id = store_data.customer_id;

select region, sum(sales) as sales_distribution_by_region
from master_customer
inner join store_data
on master_customer.customer_id = store_data.customer_id
group by region
order by 2 desc;

select segment, count(order_date) as order_date_by_segment
from master_customer
inner join store_data
on master_customer.customer_id = store_data.customer_id
where order_date between '2015-01-01' and '2015-12-31'
group by segment
order by 2 desc;

select segment, count(order_date) as order_date_by_segment
from master_customer
inner join store_data
on master_customer.customer_id = store_data.customer_id
group by segment
having count(order_date) > 500
order by 2 desc;

/* Case study answers
There are 793 unique customers and 1861 unique products */

select distinct * from master_customer;

select distinct * from master_product;

select customer_name, age 
from master_customer
where age = 30;

select region, age, count(age)  
from master_customer
group by region, age
order by 2 asc;

select region, round(avg(age), 2)
from master_customer
group by region
order by 2 desc;

/* to check the region distribution*/
select region, count(region)
from master_customer
group by region
order by 2 desc;

select segment, sum(sales) as purchases_by_segment
from master_customer
inner join store_data
on master_customer.customer_id = store_data.customer_id
group by segment
order by 2 desc;

select category, sum(sales) as sales_by_category
from master_product
inner join store_data
on master_product.product_id = store_data.product_id
group by category
order by 2 desc;

/* Query in a query (Sub-query) 
A subquery is a query inside another query. 
It helps to get data from one query and use it in another.
The sub query runs first before the main query.

A WHERE clause filters data using a fixed condition, 
while a subquery retrieves data dynamically to use within another query*/

select customer_name, age 
from master_customer
where age > (select avg(age) from master_customer);

select avg(age) from master_customer;

/* Case */

select 
case 
when sales < 500000 then 'low sales ship mode'
when sales > 10000000 then 'high sales ship mode'
else 'normal ship mode'
end as ship_range,
count(*)
from store_data
group by ship_range
order by 2 desc;











