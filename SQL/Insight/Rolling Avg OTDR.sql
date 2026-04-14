-- Rolling On-Time Delivery Rate 
-- Objective: Track short-term trends and smooth fluctuations in supplier on-time performance

select supplier_name,month,on_time_rate,
round(avg(on_time_rate) over (partition by supplier_name order by month
rows between 2 preceding and current row),2) as rolling_avg_on_time_rate
from supplier_performance
order by supplier_name,month

-- Insight:

--Identify trends, smooth volatility, and detect performance improvements or declines over time.
--TechSource is the most stable high performer, EuroParts is highly volatile and GlobalParts is improving late in the year
