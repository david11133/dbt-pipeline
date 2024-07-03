<<<<<<< HEAD
# dbt-pipeline
=======
## Description

This dbt project defines a data transformation pipeline for a sample dataset, likely related to orders and line items. It utilizes Snowflake as the target data warehouse. The pipeline consists of the following components:

### Models
- **marts folder**: Contains SQL files that create dimensional and fact tables as models.
  - `fct_orders.sql`
  - `order_items.sql`
  - `order_items_summary.sql`
- **staging folder**: Contains SQL files that create views as staging tables.
  - `sources.yaml`: Contains source definitions for Snowflake sample data.
  - `stg_lineitems.sql`
  - `stg_orders.sql`

### Macros
- **pricing.sql**: Custom macro for calculating discount amounts.

### Tests
- **fct_orders_date_valid.sql**: Unit test that checks for valid order dates.
- **fct_orders_discount.sql**: Unit test that validates discounts.

### Configurations
- **sources.yaml**: YAML file containing Snowflake connection details.
- **generic_test.yml (Optional)**: Potential test configuration file for the 'order_key' and 'order_status' accepted values.
