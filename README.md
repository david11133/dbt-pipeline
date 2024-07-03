<<<<<<< HEAD
# dbt-pipeline
=======
## Project Structure

models/
├── marts/
│   ├── fct_orders.sql
│   ├── order_items.sql
│   ├── order_items_summary.sql
├── staging/
│   ├── sources.yaml
│   ├── stg_lineitems.sql
│   └── stg_orders.sql
macros/
└── peicing.sql
tests/
├── fct_orders_date_valid.sql
└── fct_orders_discount.sql
generic_test.yml  # (Optional)
