<<<<<<< HEAD
# dbt-pipeline
=======
Description

This dbt project defines a data transformation pipeline for a sample dataset, likely related to orders and line items. It utilizes Snowflake as the target data warehouse. The pipeline consists of the following components:

Models:
marts folder: Contains SQL files that create dimensional and fact tables as models.
staging folder: Contains SQL files that create views as staging tables.
Macros:
peicing.sql: Custom macro for calculating discount amounts.
Tests:
fct_orders_date_valid.sql: Unit test that checks for valid order dates.
fct_orders_discount.sql: Unit test that validates discounts.
Configurations:
sources.yaml: YAML file containing Snowflake connection details.
generic_test.yml (Optional): Potential test configuration file (content unclear).
