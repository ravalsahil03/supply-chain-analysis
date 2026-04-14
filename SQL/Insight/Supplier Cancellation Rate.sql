
--Supplier Cancellation Rate
-- Objective: Measure the proportion of orders cancelled by each supplier

select supplier_name,
 round(count 
 (case
 when status like 'Cancelled' then 1 end) * 1.0
 / count(*),2) as Cancellation_rate
 from orders
 group by supplier_name
 order by cancellation_rate desc
 
-- Insight:

-- Higher cancellation rates indicate reliability issues, supply disruptions, or poor planning.
-- Lower rates reflect more dependable suppliers with stable fulfillment.
-- GlobalParts and EuroParts being the most unreliable, while TechSource stands out as the most dependable supplier.