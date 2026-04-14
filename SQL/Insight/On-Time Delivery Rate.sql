-- On-Time Delivery Rate (OTDR)
-- Objective: Measure supplier reliability based on timely order fulfillment


select supplier_name,
 round(sum(
 case
 when actual_delivery <= expected_delivery then 1 else 0 
 end * 1.0)
/
count(*),2) as OTDR
from orders
where actual_delivery is not null
group by supplier_name
order by OTDR desc

-- Insight :

-- This metric calculates the proportion of orders delivered on or before the expected date.
-- failure in on-time delivery (≤29%), with no strong performers and GlobalParts as the weakest link


