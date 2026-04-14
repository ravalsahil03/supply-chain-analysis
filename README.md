# Supply Chain Analysis
This project focuses on analyzing supply chain operations to identify inefficiencies in supplier performance, logistics, and inventory management. The analysis was performed using SQL for data extraction and KPI calculation, and Power BI for visualization.

## Business Problem
This business faced operational challanges such as:

- Frequent delivery delays impacting customer satisfaction
- High cancellation rates
- Stockout risks due to poor inventory planning
- Inefficient logistics and freight costs

## Objective

- Analyze supplier performance
- Improve delivery reliability
- Detect stockout risks
- Optimize logistics and inventory management
  
## Dataset Description
The dataset includes the following tables:

- Orders → Order details, status, lead time
- Inventory → Stock levels and warehouse data
- Shipments → Shipment and delivery tracking
- Supplier Performance → Supplier KPIs

<b><a href = "https://github.com/ravalsahil03/supply-chain-analysis/tree/main/Data/Excel%20Data"> Excel Data </a></b>

<b><a href = "https://github.com/ravalsahil03/supply-chain-analysis/tree/main/Data/CSV%20Data"> CSV Data </a></b>

## Tools Used

- SQL
- Power BI
- Excel

## Exploratory Data Analysis (EDA)
Performed initial data analysis to understand patterns and detect issues:

- Analyzed order status distribution (Delivered, Pending, Cancelled)
- Identified variation in lead time across suppliers
- Examined shipment delays and delivery timelines
- Evaluated inventory stock levels (High, Medium, Low)
- Compared supplier performance metrics

 EDA helped uncover trends such as:

- High number of delayed shipments
- Uneven stock distribution across warehouses
- Variability in supplier lead times

## Key Findings

#### 1. Major Delivery Performance Gap
   
- Supplier OTDR: 86%
- Actual Order OTDR: 26.39%

Indicates significant delays after supplier dispatch (logistics/internal issues).

#### 2. High Delay Impact

- Delayed shipments directly increase cancellation rates
- Delivery reliability is a major issue

#### 3. Stockout Risk

- Certain warehouses show higher stockout risk
- Poor inventory distribution
- 3 Products are in risk
  
#### 4. Lead Time Impact

- Higher lead time leads to lower on-time delivery
- Supplier inconsistency observed
  
#### 5. Logistics Cost Inefficiency

- Freight cost varies significantly
- Indicates optimization opportunities

## Dashboard

<img width="1323" height="795" alt="Snapshot of the Dashboard" src="https://github.com/ravalsahil03/supply-chain-analysis/blob/main/Dashboard%20Images/Executive%20Overview.png" />
<img width="1323" height="795" alt="Snapshot of the Dashboard" src="https://github.com/ravalsahil03/supply-chain-analysis/blob/main/Dashboard%20Images/Inventory%20Management.png" />
<img width="1323" height="795" alt="Snapshot of the Dashboard" src="https://github.com/ravalsahil03/supply-chain-analysis/blob/main/Dashboard%20Images/Order%20Analysis.png"/>
<img width="1323" height="795" alt="Snapshot of the Dashboard" src="https://github.com/ravalsahil03/supply-chain-analysis/blob/main/Dashboard%20Images/Shipments.png" />
<img width="1323" height="795" alt="Snapshot of the Dashboard" src="https://github.com/ravalsahil03/supply-chain-analysis/blob/main/Dashboard%20Images/Supplier%20Performance.png" />


## Recommendations
- Improve logistics and last-mile delivery tracking
- Maintain safety stock for high-demand items
- Monitor supplier performance using real-time metrics
- Optimize freight and transportation strategy

## Conclusion

The project identified critical inefficiencies in supply chain operations, particularly in delivery performance and inventory management. 
The insights can help improve operational efficiency, reduce costs, and enhance customer satisfaction.

