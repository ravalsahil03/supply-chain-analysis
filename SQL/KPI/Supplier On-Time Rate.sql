-- Supplier On-Time Rate (Average)
-- Objective: Measure overall supplier reliability based on average on-time performance

select supplier_name,
 round(avg(on_time_rate),2)as supplier_ontime_rate
 from supplier_performance
 group by 1
 order by supplier_ontime_rate desc

-- Insight:

-- Useful for benchmarking suppliers and identifying dependable partners.
-- All suppliers show high average on-time rates (83–90%)