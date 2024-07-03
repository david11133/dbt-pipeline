
  create or replace   view ANALYTICS.public.order_items
  
   as (
    select
    line_item.order_key,
    line_item.part_key,
    line_item.line_number,
    orders.O_ORDERKEY,
    orders.O_CUSTKEY,
    orders.O_ORDERDATE
from
    ANALYTICS.public.stg_orders as orders
join
    ANALYTICS.public.stg_lineitems as line_item
        on orders.O_ORDERKEY = line_item.order_key
  );

