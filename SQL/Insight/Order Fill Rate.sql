-- Order Fill Rate
-- Objective: Measure the proportion of non-cancelled orders that are successfully delivered

select supplier_name,
round(count( case when status = 'Delivered' then 1 end) * 1.0 / 
count(case when status <> 'Cancelled' then 1 end),2) as order_fill_rate
from orders
group by supplier_name
order by order_fill_rate desc

-- Insight:
-- This metric evaluates how effectively suppliers fulfil confirmed (non-cancelled) orders
-- order fill rate shows moderate execution performance (52–66%)
-- EuroParts strongest bc its high order fill rate, but GlobalParts is the highest-risk supplier.