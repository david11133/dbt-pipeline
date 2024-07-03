select
    line_item.order_key,
    line_item.part_key,
    line_item.line_number,
    line_item.extended_price,
    orders.customer_key,
    orders.order_date,
    
    (-1 * line_item.extended_price * line_item.discount_percentage)::decimal(16, 2)
 as item_discount_amount
from
    ANALYTICS.public.stg_orders as orders
join
    ANALYTICS.public.stg_lineitems as line_item
    on orders.order_key = line_item.order_key