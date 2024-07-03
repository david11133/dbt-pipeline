
  
    

        create or replace transient table ANALYTICS.public.fct_orders
         as
        (select
    orders.*,
    order_item_summary.gross_item_sales_amount,
    order_item_summary.item_discount_amount
from
    ANALYTICS.public.stg_orders as orders
join
    ANALYTICS.public.order_items_summary as order_item_summary
        on orders.order_key = order_item_summary.order_key
order by order_date
        );
      
  