# Swiggy Data Analysis Project using Microsoft Fabric & Power BI

## Overview

This project demonstrates an end-to-end analytics solution built using Microsoft Fabric, Fabric Warehouse, SQL, Semantic Models, and Power BI.

The objective was to ingest Swiggy order data, validate and transform the data, create a dimensional model, and develop an interactive dashboard for business insights.

---

## Technology Stack

- Microsoft Fabric
- OneLake
- Lakehouse
- Fabric Warehouse
- Fabric Pipelines
- SQL Endpoint
- Semantic Models
- Power BI Desktop
- Power BI Service
- DAX

---

## Solution Architecture

CSV Files

↓

Lakehouse

↓

Delta Tables (Parquet)

↓

SQL Validation

↓

Fabric Pipeline

↓

Warehouse

↓

Semantic Model

↓

Power BI Dashboard

↓

Power BI Service

---

## Project Structure

```text
01_Architecture
│
├── Architecture Documentation
└── Star Schema Model

02_SQL
│
├── SQL Validation Scripts
└── Data Type Correction Scripts

03_PowerBI
│
├── Dashboard Screenshots
└── Semantic Model

04_Fabric
│
├── Lakehouse
├── Warehouse
└── Pipeline Documentation

docs
│
└── Project Documentation
```

---

## Key Features

### Data Engineering

- CSV ingestion into Fabric Lakehouse
- Delta Table creation
- Parquet storage
- Fabric Pipeline implementation
- Data validation using SQL

### Data Warehousing

- Fabric Warehouse implementation
- Star Schema design
- Fact and Dimension modeling
- Data quality checks

### Business Intelligence

- Semantic Model creation
- DAX measures
- Interactive dashboards
- KPI reporting

---

## Dashboard KPIs

| KPI | Value |
|------|------|
| Total Sales | ₹53.01M |
| Total Orders | 197.43K |
| Average Order Value | ₹268.51 |
| Average Rating | 4.34 |
| Rating Count | 5.59M |

---

## Dashboard Preview

See:

`03_PowerBI/Dashboard.png`

---

## Key Learnings

- Microsoft Fabric Architecture
- Lakehouse and Warehouse Concepts
- Data Pipelines
- SQL Data Validation
- Semantic Modeling
- Star Schema Design
- Power BI Reporting
- DAX Development

---

## Author

Vishal Thakare

GitHub:
https://github.com/vishalthakare101
