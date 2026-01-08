--SELECT * FROM dbo.[pizza_sales]

--select sum(total_price) as total_revenue from pizza_sales
select sum(total_price) / count(distinct order_id) as avg_order_value from pizza_sales
--select sum(quantity) as total_pizza from pizza_sales
--select count(distinct order_id) as total_orders from pizza_sales
--select cast(cast(sum(quantity) as decimal(10,2)) / cast(count(distinct order_id)as decimal(10,2)) as decimal(10,2)) as avg_pizza_perorder from pizza_sales

--Daily trend
--select datename(dw, order_date) as order_day, count(distinct order_id) as total_orders from pizza_sales
--group by datename(dw, order_date)

--hourly trend
--select datepart(hour, order_time) as order_hours, count(distinct order_id) as total_orders from pizza_sales
--group by datepart(hour, order_time)
--order by datepart(hour, order_time)

--select pizza_category, sum(total_price) as total_sales, sum(total_price) * 100 / (select sum(total_price) from pizza_sales where month(order_date) = 1) as PCT from pizza_sales
--where month(order_date) = 1
--group by pizza_category

--select pizza_size,CAST(sum(total_price) AS decimal(10,2)) AS total_sales, CAST(sum(total_price) * 100 / (select sum(total_price) from pizza_sales WHERE DATEPART(quarter, order_date) = 1) AS DECIMAL (10,2)) AS PCT
--from pizza_sales
--WHERE DATEPART(quarter, order_date) = 1
--group by pizza_size
--order by PCT DESC

--select pizza_category, sum(quantity) as total_product_quantity
--from pizza_sales
--group by pizza_category

--select top 5 pizza_name, sum(quantity) as total_pizza_sold
--from pizza_sales
--group by pizza_name
--order by sum(quantity) desc

--select top 5 pizza_name, sum(quantity) as total_pizza_sold
--from pizza_sales
--where month(order_date) = 8
--group by pizza_name
--order by sum(quantity) asc