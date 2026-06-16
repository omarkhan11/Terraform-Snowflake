# Terraform-Snowflake
<img width="3392" height="1676" alt="image" src="https://github.com/user-attachments/assets/c425abec-8443-4454-a943-1717c1e730ba" />


I successfully designed, built, and deployed a multi-environment Snowflake data platform entirely managed as code using Terraform.

Here is exactly what was built and implemented:

1. Architectural Blueprinting (Modules)
Created a highly reusable, immutable configuration template (snowflake_db_template) under the modules/ directory.

This single template dynamically creates our core data stack: an environment-specific Database, a Schema, core data tracking Tables (SALES, USERS), and dedicated Virtual Warehouses.

2. Multi-Environment Environment Isolation
Implemented a standard enterprise lifecycle structure separating our environments into isolated execution rings: dev, tst, and prod.

Handled environment-specific computing power requirements using variable overrides—automatically scaling up processing power for analytics pipelines where needed (like sizing a production data science cluster to Medium), while keeping development and testing environments safely locked at a cost-efficient X-Small.

3. Separation of Globals vs Lifecycles
Created a dedicated global/ folder to manage account-wide singletons (like our universal corporate warehouse CRM_GB_WH), ensuring they are kept completely decoupled from our fast-moving application environments to eliminate resource duplication or accidental state destruction.

4. Zero-Trust Security Configuration
Completely scrubbed all plaintext credentials (usernames, passwords, and account locators) out of the main codebase.

Transitioned the platform authentication layer to use dynamic variable sockets (var.snowflake_password).

Set up local runtime automation using .auto.tfvars files to cleanly pass credentials behind the scenes on my physical machine, backed by a global .gitignore shield to ensure no passwords can ever leak onto GitHub.

