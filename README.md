This project is a modular ELT pipeline built using dbt and BigQuery to automate my complex gap analysis project. It replaces manual spreadsheet-based workflows with a scalable, test-driven data architecture. The focus of the project is to create a target list of clients where we are currently not being allowed whitelisting so having to use third-party proxies to help collect data. These third-party proxies add up in cost - with the result of the target list, we can start to reach out to these clients where we already have an established relationship with to start a whitelisting implementation conversation with the end result being reduced third-party proxies being used.

This is currently still being worked on. Next steps after having tested is to document and orchestrate within dbt cloud.

Architecture:
Staging: Cleans and standardizes raw CSV data.

Intermediate: Performs core business logic and joins (int_proxy_exception).

Marts: Delivers cleaned, high-value tables (fct_outreach_target_list, dim_retailers).

Key Features
Modular Logic: Decoupled transformations for maintainability.

Data Quality: Implemented automated dbt tests (unique, not_null) to ensure data integrity.

Star Schema: Designed for performance and streamlined architecture. 
