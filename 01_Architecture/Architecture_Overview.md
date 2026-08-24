# End-to-End Architecture

## Data Ingestion Layer
- CSV files ingested into Microsoft Fabric Lakehouse
- Data stored as Delta Tables in Parquet format

## Data Validation Layer
- SQL Endpoint used for row-count validation
- Data quality checks performed
- Datatype verification completed

## Data Movement Layer
- Fabric Pipeline used to transfer data from Lakehouse to Warehouse
- Copy Data Activities configured for all dimension and fact tables

## Data Warehouse Layer
- Structured analytical storage
- Schema: swiggy_project
- SQL transformations and validations applied

## Semantic Layer
- Semantic Model created on top of Warehouse
- Business-friendly data layer for reporting

## Reporting Layer
- Power BI Desktop connected to Semantic Model
- Star Schema implemented
- DAX measures and calculated columns created

## Visualization Layer
- KPI Cards
- Monthly Sales Trend
- Weekly Trend
- Daily Trend
- Sales by Food Type
- Top Restaurants
- Top States
- Interactive Slicers

## Deployment Layer
- Published to Fabric Workspace
- Report available through Power BI Service
