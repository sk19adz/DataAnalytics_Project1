select * from pizzasales;

SELECT DAYNAME(STR_TO_DATE(order_date, '%d/%m/%Y')) AS order_day, 
count(distinct order_id) as total_orders
FROM pizzasales group by order_day;

select monthname(str_to_date(order_date, '%d/%m/%y')) as order_month, count(distinct order_id) as total_orders from pizzasales group by order_month;

select pizza_category, 
sum(total_price) as total_revenue, 
sum(total_price) * 100 / (select(sum(total_price)) from pizzasales) as total_sales 
from pizzasales 
group by pizza_category;

SELECT 
    pizza_category,
    SUM(total_price) AS total_revenue,
    SUM(total_price) * 100 / (SELECT SUM(total_price) FROM pizzasales WHERE MONTH(order_date) = 1) AS total_sales_percentage
FROM 
    pizzasales
WHERE 
    MONTH(order_date) = 1
GROUP BY 
    pizza_category;

SELECT 
    order_date,
    DATE_FORMAT(STR_TO_DATE(order_date, '%d/%m/%Y'), '%Y-%m-%d') AS formatted_date
FROM 
    pizzasales;

SELECT 
    pizza_size,
    SUM(total_price) AS total_revenue,
    SUM(total_price) * 100 / (SELECT SUM(total_price) FROM pizzasales WHERE MONTH(order_date) = 1) AS total_sales_percentage
FROM 
    pizzasales
WHERE 
    MONTH(order_date) = 1
GROUP BY 
    pizza_size;

select * from pizzasales;

select pizza_name, sum(total_price) as total_revenue from pizzasales
group by pizza_name
order by total_revenue asc;

