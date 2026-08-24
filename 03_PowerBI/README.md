# Power BI Dashboard

## Dashboard Overview

This interactive Swiggy Sales Analytics dashboard was developed using Power BI and Microsoft Fabric to analyze sales performance, customer ratings, restaurant performance, and geographical trends.

---

## Key KPIs

- Total Sales: ₹53.01M
- Average Order Value (AOV): ₹268.51
- Total Orders: 197.43K
- Average Rating: 4.34
- Rating Count: 5.59M

---

## DAX Measures

```DAX
Total Sales = SUM(price)

Total Orders = COUNT(order_id)

Average Order Value =
[Total Sales] / [Total Orders]
```

---

## Dashboard Visualizations

### KPI Cards
- Total Sales
- Average Order Value
- Total Orders
- Average Rating
- Rating Count

### Trend Analysis
- Monthly Sales Trend
- Daily Sales Trend
- Weekly Sales Trend

### Business Analysis
- Sales by Food Type (Veg vs Non-Veg)
- Top 5 Restaurants by Sales
- Top 15 States by Sales

---

## Interactive Filters

- City
- Food Type
- Quarter
- Restaurant Name

---

## Data Model

The dashboard is built using a Star Schema data model.

### Fact Table
- fact_orders

### Dimension Tables
- dim_date
- dim_dish
- dim_location
- dim_restaurant

Refer to **Semantic_Model.png** for the relationship design.

---

## Dashboard Preview

See **Dashboard.png**.

---

## Key Insights

- Generated ₹53.01M in total sales across 197K+ orders.
- Non-Veg dishes contributed approximately 64% of total sales.
- Karnataka recorded the highest sales among all states.
- KFC emerged as the top-performing restaurant based on total revenue.
- Average order value was ₹268.51.

---

## Technologies Used

- Microsoft Fabric
- OneLake
- Fabric Warehouse
- Semantic Models
- Power BI Desktop
- Power BI Service
- DAX

---

## Note

The Power BI (.pbix) file is not included in this repository.

This repository focuses on showcasing the Microsoft Fabric architecture, SQL transformations, semantic modeling, and dashboard outputs while protecting the original project assets.
