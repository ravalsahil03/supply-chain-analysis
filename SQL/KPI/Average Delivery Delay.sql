-- Average Delivery Delay (Days)
-- Objective: Measure how late deliveries are when they miss the expected delivery date


select
 round(avg(actual_delivery - expected_delivery))as avg_delay_days
from orders
where actual_delivery is not null
  and expected_delivery is not null
  and actual_delivery > expected_delivery
  
-- Insight:

-- This metric captures the average number of days orders are delayed beyond the expected delivery date.
-- A higher value indicates significant inefficiencies in logistics or supplier performance.
-- Average delay days is 5.