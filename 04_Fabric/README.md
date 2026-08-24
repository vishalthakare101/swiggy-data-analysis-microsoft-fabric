# Microsoft Fabric Implementation

## Project Overview

Microsoft Fabric was used to build an end-to-end analytics solution for Swiggy sales data.

The project leveraged Lakehouse, Fabric Pipelines, Warehouse, SQL Endpoint, and Semantic Models to transform raw CSV files into a business-ready Power BI dashboard.

---

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

---

## Lakehouse

The Lakehouse served as the data ingestion and storage layer.

### Activities Performed

- Loaded CSV files into Microsoft Fabric Lakehouse
- Converted data into Delta Tables
- Stored data in Parquet format
- Validated imported data through SQL Endpoint

---

## SQL Validation

Sample validation queries:

```sql
SELECT * FROM dim_date;

SELECT COUNT(*) FROM dim_date;
```

*alidation was performed on:

- dim*date
- dim_dish
- dim_location
- d*m_restaurant
- fact_orders

---

#* Warehouse

A*Fabric Warehouse was created to su*port analytical workloads.

### Sc*ema Creation

```sql
CREATE SCHEMA*swiggy_project;
```

### Benefits
*- Structured analytical storage
- *CID compliance
- SQL transformatio*s
- Semantic Model*support

---

## Fabric Pipeline

*ipeline Name:

**swiggy_Lakehouse_*o_Warehouse**

The pipeline*was used to*move data from Lakehouse tables in*o Warehouse tables.

### Activitie*

- Copy Data Activity
- Source: L*kehouse
- Destination: Warehouse
-*Validation before execution
- Succ*ssful execution monitoring

---

#* Data Quality Checks

Performed:

* Row count validation
- Datatype v*lidation
- Null value checks
- Dat* consistency checks

### Issue Res*lved

The `*rder*date` column was stored as a strin* datatype.

The issue*was resolved using SQL by creating*a*new DATE column and converting the*values using `TRY_CONVERT()`.

---*
## Technologies Used

- Microsoft*Fabric
- OneLake
- Lakehouse
- War*house
- Fabric Pipelines
- SQL End*oint
- Semantic Models
````*
