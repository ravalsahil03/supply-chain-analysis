-- Inventory Distribution by Stock Status (Top Warehouse by Value)
-- Objective: Analyze stock composition in the highest-value warehouse

select warehouse_name, stock_status, count(*) as items,
  sum(inventory_value) as total_value
from inventory
where warehouse_name = (
  select warehouse_name from inventory
  group by warehouse_name
  order by sum(inventory_value) desc limit 1)
group by warehouse_name, stock_status
order by total_value desc

-- Helps assess inventory health and risk concentration in the most valuable warehouse.
-- Shanghai East is most valuable warehouse is heavily stocked with minimal stockout risk.