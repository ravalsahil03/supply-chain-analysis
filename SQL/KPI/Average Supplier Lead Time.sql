-- Average Supplier Lead Time (Days)
-- Objective: Measure how long suppliers take on average to fulfill orders


select supplier_name,round(avg(avg_lead_time),2) as avg_lead_time_days
from supplier_performance
group by supplier_name
order by 2 desc

--Insight:

-- Suppliers with higher lead times indicate slower fulfillment, which can impact inventory planning and service levels.
-- Lower lead time suppliers are more agile and better suited for urgent or high-frequency orders.
-- AsiaTrade is notably slower and EuroParts clearly stands out as the most agile.