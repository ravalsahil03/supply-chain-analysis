-- Warehouse Utilization Rate (%)
-- Objective: Measure how efficiently warehouse capacity is being used

with Data as(
select warehouse_name,
sum(stock_quantity) *  1.0 / sum(max_capacity) * 100 as utilization
from inventory
group by 1
) 
select warehouse_name,
round(avg(utilization),2) average_Utilization
from data
group by 1

--Insight:

-- This metric evaluates how much of each warehouse’s total capacity is being utilized.
-- Higher utilization indicates better space efficiency, while lower values suggest underutilization.
-- warehouse network is well-balanced but heavily underutilized (38%)