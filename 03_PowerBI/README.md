# Power BI Dashboard

## Dashboard Overview

An interactive Swiggy Sales Analytics dashboard developed using Power BI and Microsoft Fabric.

## Key KPIs

- Total Sales: ₹53.01M
- Average Order Value: ₹268.51
- Total Orders: 197.43K
- Average Rating: 4.34
- Rating Count: 5.59M

## DAX Measures

```DAX
Total Sales = SUM(price)

Total Orders = COUNT(order_id)

Average Order Value =
[Total Sales] / [Total Orders]
```

## Visualizations

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
- Sales by Food Type
- Top Restaurants
- Top States

## Interactive Filters

- City
- Food Type
- Quarter
- Restaurant Name

## Data Model

Star Schema implementation:

- fact_orders
- dim_date
- dim_dish
- dim_location
- dim_restaurant

## Dashboard Preview

See Dashboard.png

## Note

The Power BI (.pbix) file is not included in this repository.

The repository focuses on showcasing the Microsoft Fabric architecture, SQL transformations, semantic modeling, and dashboard outputs.
