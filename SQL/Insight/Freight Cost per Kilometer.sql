-- Freight Cost per Kilometer
-- Objective: Measure transportation cost efficiency across carriers

select carrier,
round(sum(freight_cost)/sum(distance_km), 2) as cost_per_km
from shipments 
group by carrier 
order by cost_per_km  

-- Insight:
-- Helps in optimizing carrier selection and reducing transportation costs.
-- DB Schenker and FedEx being the most cost-efficient, while UPS and Maersk are substantially more expensive