# Swiggy Data Analysis Project Documentation

## Project Objective

The objective of this project was to build an end-to-end analytics solution using Microsoft Fabric and Power BI for analyzing Swiggy sales data.

---

## Business Problem

Swiggy generates large volumes of order data from restaurants across multiple cities and states.

The goal was to transform raw transactional data into actionable business insights that can help stakeholders monitor:

- Sales performance
- Customer ratings
- Restaurant performance
- Food preferences
- Geographic trends

---

## Solution Overview

The solution was developed using Microsoft Fabric and Power BI.

Data Flow:

CSV Files

↓

Microsoft Fabric Lakehouse

↓

Delta Tables (Parquet)

↓

SQL Validation

↓

Fabric Warehouse

↓

Semantic Model

↓

Power BI Dashboard

↓

Power BI Service

---

## Microsoft Fabric Components Used

### Lakehouse

Used for:

- Data ingestion
- Delta table creation
- Parquet storage
- Raw data storage

### SQL Endpoint

Used for:

- Row count validation
- Data verification
- Data quality checks

### Warehouse

Used for:

- Structured analytical storage
- SQL transformations
- Semantic model creation

### Fabric Pipeline

Used for:

- Lakehouse to Warehouse data movement
- Automated data loading

---

## Data Model

The reporting layer follows a Star Schema design.

Fact Table:

- fact_orders

Dimension Tables:

- dim_date
- dim_dish
- dim_location
- dim_restaurant

---

## Data Quality Validation

The following checks were performed:

- Row count validation
- Datatype validation
- Null value checks
- Conversion validation

Issue Identified:

The order_date column in dim_date was stored as a string datatype.

Issue Resolution:

A new DATE column was created and populated using SQL TRY_CONVERT().

---

## Power BI Development

### Measures

- Total Sales
- Total Orders
- Average Order Value
- Average Rating
- Rating Count

### Calculated Columns

- Month
- Month Number
- Day
- Day Number
- Week Number
- Quarter

### Dashboard Features

- KPI Cards
- Monthly Trend
- Daily Trend
- Weekly Trend
- Food Type Analysis
- Top Restaurants
- Top States
- Interactive Slicers

---

## Results

Total Sales:
₹53.01M

Total Orders:
197.43K

Average Order Value:
₹268.51

Average Rating:
4.34

Top Restaurant:
KFC

Top State:
Karnataka

---

## Technologies Used

- Microsoft Fabric
- OneLake
- Lakehouse
- Warehouse
- SQL Endpoint
- Fabric Pipeline
- Semantic Models
- Power BI Desktop
- Power BI Service
- DAX
- T-SQL

---

## Key Learnings

- End-to-end Microsoft Fabric implementation
- Data Warehousing concepts
- ETL pipeline development
- Data validation techniques
- Star Schema modeling
- Semantic model creation
- Power BI dashboard development
- DAX calculations and business reporting
