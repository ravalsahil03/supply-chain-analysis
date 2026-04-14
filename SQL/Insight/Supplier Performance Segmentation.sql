-- Supplier Performance Segmentation (Fill Rate + Revenue)
-- Objective: Classify suppliers based on both operational efficiency (order fill rate) and business impact (revenue)


with metrics as (

select supplier_name,
round(count( case when status = 'Delivered' then 1 end) * 1.0 / 
count(case when status <> 'Cancelled' then 1 end),2) as order_fill_rate,
sum((quantity*unit_cost)* (1-discount_rate)) as revenue
from orders
group by supplier_name
order by order_fill_rate desc
),

ranked as (
    select *,
        rank() over (ORDER BY order_fill_rate desc) as ofr_rank,
        rank() over (order by revenue desc) as revenue_rank
    from metrics
)
select
    supplier_name,
    order_fill_rate,
    revenue,
    case
        when ofr_rank <= 2 and revenue_rank <= 2 then 'Top Performer'
        when ofr_rank >= (select count(*) from ranked) - 1 
          and revenue_rank >= (select count(*) from ranked) - 1 then 'Bottom Performer'
        else'Average'
    end as supplier_category
from ranked
order by revenue desc 

-- Insight:

-- Helps prioritize high-value and high-efficiency suppliers while identifying underperformers.
-- EuroParts as the top performer by value and efficiency
-- TechSource emerges as the most reliable long-term partner and GlobalParts poses the biggest risk due to high revenue dependency but weak execution.
