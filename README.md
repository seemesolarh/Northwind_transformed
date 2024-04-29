Northwind Data Extraction and Transformation

Overview

This project focuses on extracting data from the Northwind API, transforming it using dbt (Data Build Tool), and creating staging and production models for analysis.
The Northwind API provides access to a fictional company's sales, customers, products, and orders data. The extracted data is then transformed into a structured format using dbt, 
enabling analysis and visualization of key business metrics.

To run this project, i ensured i have the following libraries installed:

requests: For connecting to the Northwind API

pandas: For data transformation

sqlalchemy: For communicating with PostgreSQL

dbt: For data transformation and modeling

1. Data Extraction from API:
Python scripts are used to connect to the Northwind API and retrieve data.
The requests library is typically employed to make HTTP requests to the API endpoints.
Extracted data is often in JSON format and is stored in Python data structures (e.g., lists, dictionaries).

2. Data Loading into PostgreSQL:
After extracting data from the API, it is loaded into a PostgreSQL database for further processing.
The pandas library is commonly used to convert JSON data into a DataFrame.
The data is then loaded into PostgreSQL tables using the to_sql method provided by the sqlalchemy library.

3. Data Transformation using dbt:
dbt (Data Build Tool) is used to transform the raw data into structured formats suitable for analysis.
dbt projects typically consist of SQL-based models representing the desired data transformations.
These models define the logic for transforming the staging data into production-ready models.
Models are organized into directories within the dbt project, and dependencies between models are specified.

4. Execution of dbt Models:
Once the dbt project is configured and models are defined, they can be executed using the dbt run command.
dbt automatically generates SQL queries based on the models and executes them against the database.
During execution, dbt handles dependencies between models and ensures that transformations are performed in the correct order.

Overall, this process involves extracting data from the API, loading it into a database, transforming it using dbt, and then analyzing
the transformed data to derive insights and make informed decisions.
