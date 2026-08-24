MICROSOFT FABRIC IMPLEMENTATION

PROJECT OVERVIEW

This project was built using Microsoft Fabric to create an end-to-end analytics solution for Swiggy sales data.

The solution includes:

- Lakehouse
- SQL Endpoint
- Fabric Pipeline
- Warehouse
- Semantic Model
- Power BI

--------------------------------------------------

DATA FLOW

CSV Files

↓

Microsoft Fabric Lakehouse

↓

Delta Tables (Parquet Format)

↓

SQL Validation

↓

Fabric Pipeline

↓

Fabric Warehouse

↓

Semantic Model

↓

Power BI Dashboard

↓

Power BI Service

--------------------------------------------------

LAKEHOUSE

The Lakehouse was used as the data ingestion layer.

Activities performed:

- Imported CSV files
- Created Delta Tables
- Stored data in Parquet format
- Verified data using SQL Endpoint

--------------------------------------------------

SQL VALIDATION

Validation was performed using SQL queries.

Examples:

SELECT * FROM dim_date;

SELECT COUNT(*) FROM dim_date;

Validation was completed for:

- dim_date
- dim_dish
- dim_location
- dim_restaurant
- fact_orders

--------------------------------------------------

WAREHOUSE

A Fabric Warehouse was created to support analytical reporting.

Schema:

CREATE SCHEMA swiggy_project;

Benefits:

- Structured storage
- ACID compliance
- SQL support
- Semantic Model support

--------------------------------------------------

PIPELINE

Pipeline Name:

swiggy_Lakehouse_to_Warehouse

Activities:

- Copied data from Lakehouse
- Loaded data into Warehouse
- Validated execution results
- Verified data consistency

--------------------------------------------------

DATA QUALITY CHECKS

Checks performed:

- Row count validation
- Datatype validation
- Null value validation
- Data consistency validation

Issue resolved:

The order_date column in dim_date was stored as a string datatype.

The issue was fixed using SQL and converted to DATE datatype using TRY_CONVERT().

--------------------------------------------------

TECHNOLOGIES USED

- Microsoft Fabric
- OneLake
- Lakehouse
- Warehouse
- Fabric Pipeline
- SQL Endpoint
- Semantic Model
- Power BI
