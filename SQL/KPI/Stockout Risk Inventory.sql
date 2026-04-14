-- Stockout Risk Inventory 
-- Objective: Identify items where current stock is below the reorder level

select * from inventory
where stock_quantity < reorder_level

-- Insight:


-- These items are at risk of stockouts and may disrupt operations or customer fulfillment.
-- 3 product are in stockout risk