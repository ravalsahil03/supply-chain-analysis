-- Product Revenue Contribution
-- Objective: Identify top-performing products based on total revenue generated

select product_name,
sum((quantity*unit_cost)* (1-discount_rate)) as total_revenue
from orders
group by product_name
order by total_revenue desc

-- Insight:
-- Helps identify high-performing products, demand drivers, and revenue concentration.
-- Revenue is heavily concentrated in a few high-value electronics products like especially Circuit Boards and LED Displays,creating both a strong growth focus and a critical dependency risk.