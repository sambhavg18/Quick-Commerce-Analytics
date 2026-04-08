
# Quick Commerce Analytics Dashboard

### End-to-end data analytics project | Excel · PostgreSQL · Power BI

![Tools](https://img.shields.io/badge/Excel-Power%20Query-217346?style=flat&logo=microsoftexcel&logoColor=white)
![Tools](https://img.shields.io/badge/PostgreSQL-Database-4169E1?style=flat&logo=postgresql&logoColor=white)
![Tools](https://img.shields.io/badge/Power%20BI-Dashboard-F2C811?style=flat&logo=powerbi&logoColor=black)

---

## Project Overview

This project delivers a comprehensive analysis of India's quick commerce sector — one of the fastest growing segments in Indian retail. Using a dataset of **179,380 orders** across **6 major platforms** and **12 Indian cities** spanning the full year of **2024**, the project follows an industry-standard data workflow: raw data cleaning in Excel, structured storage and analysis in PostgreSQL, and interactive visualisation in Power BI.

The goal is to surface actionable business insights around revenue performance, delivery efficiency, customer behaviour, and the impact of discounting — the exact questions that quick commerce companies and their investors care about today.

---

## Tools & Technologies

| Tool | Purpose |
|---|---|
| Microsoft Excel (Power Query) | Data cleaning, transformation and preparation |
| PostgreSQL | Relational database, schema design, analytical views |
| Power BI Desktop | Interactive dashboard and business visualisation |

---

## Dataset

| Attribute | Detail |
|---|---|
| Total Orders | 179,380 |
| Time Period | January 2024 – December 2024 |
| Companies | Blinkit, Zepto, Swiggy Instamart, Big Basket, Flipkart Minutes, Jio Mart |
| Cities | 12 Indian cities — Delhi, Mumbai, Bengaluru, Hyderabad, Pune, Kolkata and more |
| Product Categories | Beverages, Dairy, Snacks, Personal Care, Fruits & Vegetables, Household |
| Payment Methods | UPI, Wallet, Credit Card, Debit Card, Cash on Delivery |

> **Note:** The raw dataset was synthetically generated to reflect realistic Indian quick commerce patterns including festive season demand spikes (Oct/Nov), weekend order surges, and city-level distribution weighted by urban density. Dunzo was excluded as the company has shut down. Groceries was excluded as a category to focus on higher-frequency impulse categories.

---

## Project Workflow

```
Raw CSV Data
     │
     ▼
Excel — Power Query
├── Standardised company and city names
├── Resolved mixed date formats (ISO + DD/MM/YYYY)
├── Replaced corrupted Order_Value entries (₹ prefix, N/A)
├── Filled null Customer_Ratings with median by company
├── Filtered invalid Delivery_Time values (zeros)
├── Converted Discount_Applied to Boolean (True/False)
└── Removed duplicates
     │
     ▼
PostgreSQL
├── CREATE TABLE qc_orders — 14 columns, typed and constrained
├── CREATE VIEW discount_impact
└── CREATE VIEW delivery_performance
     │
     ▼
Power BI
├── Calendar table with full 2024 date intelligence
├── 12 DAX measures + 2 calculated columns
├── Page 1 — Executive Overview
└── Page 2 — Operational Performance & Discount Insights
```

---

## Dashboard

### Page 1 — Executive Overview
![Executive Overview](images/dashboard_overview.png)

### Page 2 — Operational Performance
![Operational Performance](images/dashboard_operations.png)

---

## Key Insights

**1. Zepto dominates delivery speed by a significant margin**
Zepto's average delivery time of **9.62 minutes** is nearly 40% faster than Blinkit (15.11 min) and more than twice as fast as Jio Mart (23.01 min). A remarkable **88.3% of Zepto's orders are delivered under 15 minutes** — compared to just 6.5% for Jio Mart. This directly reflects Zepto's hyperlocal dark store strategy concentrated in dense metro areas.

**2. Discounting drives higher basket sizes but has zero impact on satisfaction**
Discounted orders carry an average order value of **₹719 vs ₹485** for non-discounted — a 48% premium. However both groups share an identical average customer rating of **3.17**. Discounts are attracting higher-value orders but not improving the experience, raising questions about their ROI as a retention strategy.

**3. Festive season creates a dramatic demand spike**
October recorded **22,251 orders** and ₹1.27 crore in revenue — a **53% spike above the monthly baseline** of ~14,500 orders. November followed closely with 20,141 orders. This mirrors Navratri, Dussehra and Diwali gifting patterns perfectly.

**4. Swiggy Instamart leads on revenue despite not leading on speed or ratings**
Swiggy Instamart generated the highest total revenue (**₹1.92 crore**) ahead of Blinkit (₹1.83 crore) and Zepto (₹1.77 crore). However Blinkit leads on customer satisfaction with an average rating of **3.59** — suggesting a stronger quality-of-experience advantage over pure volume.

**5. NCR satellite cities outperform metro giants**
Gurgaon (₹1.06 crore) and Noida (₹1.04 crore) rank #1 and #2 in total revenue — ahead of Mumbai (₹89 lakh) and Delhi (₹92 lakh). This reflects high disposable income and delivery infrastructure density in NCR's satellite cities.

---

## Repository Structure

```
Quick-Commerce-Analytics/
│
├── README.md
├── data/
│   ├── qc_Raw_data_latest.csv        # Original raw dataset
│   └── QC_CleanedData.csv            # Cleaned dataset post Power Query
├── sql/
│   └── quick_commerce.sql            # CREATE TABLE + 2 views
├── powerbi/
│   └── QuickCommerce_data.pbix       # Power BI dashboard file
└── images/
    ├── dashboard_overview.png        # Page 1 screenshot
    └── dashboard_operations.png      # Page 2 screenshot
```

---

## How to Run

**PostgreSQL:**
```sql
-- Run the SQL file to create the table and views
\i sql/quick_commerce.sql

-- Import cleaned data via pgAdmin Import/Export wizard
-- or via COPY command:
COPY qc_orders FROM '/path/to/QC_CleanedData.csv' DELIMITER ',' CSV HEADER;
```

**Power BI:**
1. Open `QuickCommerce_data.pbix` in Power BI Desktop
2. Go to Home → Transform Data → Data Source Settings
3. Update PostgreSQL server and database name to your local setup
4. Click Refresh

---

## Author

**Sambhav Gupta**
Built as a portfolio project demonstrating end-to-end data analytics capability across Excel, PostgreSQL and Power BI — reflecting a real-world corporate data workflow from raw ingestion to business insight.

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-0A66C2?style=flat&logo=linkedin&logoColor=white)](https://linkedin.com/in/your-profile)
[![GitHub](https://img.shields.io/badge/GitHub-Follow-181717?style=flat&logo=github&logoColor=white)](https://github.com/sambhavg18)
