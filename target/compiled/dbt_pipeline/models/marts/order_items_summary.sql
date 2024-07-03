select 
    ORDER_KEY,
    sum(EXTENDED_PRICE) as gross_item_sales_amount,
    sum(ITEM_DISCOUNT_AMOUNT) as item_discount_amount
from
    ANALYTICS.public.order_items
group by
    order_key