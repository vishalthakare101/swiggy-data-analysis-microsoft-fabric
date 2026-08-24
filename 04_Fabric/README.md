# Microsoft Fabric Implementation

## Project Overview

Microsoft Fabric was used to build an end-to-end analytics solution for Swiggy sales data.

The project leveraged Lakehouse, Fabric Pipelines, Warehouse, SQL Endpoint, and Semantic Models to transform raw CSV files into a business-ready Power BI dashboard.

## Architecture Flow

CSV Files

↓

Fabric Lakehouse

↓

Delta Tables (Parquet)

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

## Lakehouse

The Lakehouse served as the data ingestion and storage layer.

Activities Performed:

- Loaded CSV files into Microsoft Fabric Lakehouse
- Converted data into Delta Tables
- Stored data in Parquet format
- Validated imported data through SQL Endpoint

## SQL Validation

Sample validation queries:

```sql
SELECT * FROM dim_date;

SELECT COUNT(*) FROM dim_date;
```

Validation w*s performed on:

- dim_date
- dim_*ish
- dim_location
- dim_restauran*
- fact_orders

## Warehouse

A Fa*ric Warehouse was created to suppo*t analytical workloads.

Schema Cr*ation:

```sql
CREATE SCHEMA swigg*_project;
```

Benefits:

- Struct*red analytical storage
- ACID comp*iance
- SQL transformations
- Sema*tic Model support

## Fabric Pipel*ne

Pipeline Name:

swiggy_Lakehou*e_to_Warehouse

The pipeline was u*ed to move data from Lakehouse tab*es into Warehouse tables.

Activit*es:

- Copy Data Activity
- Source* Lakehouse
- Destination: Warehous*
- Validation before execution
- S*ccessful execution monitoring

## *ata Quality Checks

Performed:

- *ow count validation
- Datatype val*dation
- Null value checks
- Data *onsistency checks

Issue Resolved:*
The order_date column was stored *s a string datatype.

The issue wa* resolved using SQL by creating a *ew DATE column and converting the *alues using TRY_CONVERT().

## Tec*nologies Used

- Microsoft Fabric
* OneLake
- Lakehouse
- Warehouse
-*Fabric Pipelines
- SQL Endpoint
- *emantic Models
