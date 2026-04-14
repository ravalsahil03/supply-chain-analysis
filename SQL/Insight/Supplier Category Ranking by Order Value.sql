-- Supplier Category Ranking by Order Value
-- Objective: Identify top-performing suppliers within each product category based on total order value

select 
supplier_name, category, sum(total_value) as total_order,
rank ()
over(partition by category order by sum(total_value) desc ) 
as rank
from orders
group by 1,2

-- Helps identify category leaders and supplier dominance.
-- Useful for understanding supplier specialization and dependency concentration.
-- EuroParts is dominating high-value categories (especially Electronics), but this creates significant risk concentration
-- TechSource emerges as the most balanced and reliable supplier overall.