use intro_sql;

with total_per_category as
(select
product_name,category,
round(unit_price*units_in_stock,2) as product_total
from products p
inner join orders o
on o.id=p.id
inner join customers c
on c.id=o.customer_id),

ranked_table as
(select
dense_rank() over(partition by category order by product_total desc) as ranking,
total_per_category.*
from total_per_category
where product_total!=0)

select
category,
round(avg(product_total),2) as avg_per_product
from ranked_table
group by category
order by avg_per_product desc