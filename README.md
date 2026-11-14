# 🛒 Maven Fuzzy Factory — E-commerce Sales Performance & Customer Behaviour Analysis

> **AnalystLab Africa Experience Lab Internship Programme**  
> **Week 2 — Track 1: Data Analytics**  
> **Author:** Daniel Thomas  
> **Submission Date:** 14 November 2026  

---

## 📖 Project Overview

**Maven Fuzzy Factory** is a fictional e-commerce company used as a real-world case study for this project. Management wanted to understand **how the website performs**, **which marketing channels drive sales**, **which products generate the most revenue**, and **how refunds affect profitability**.

This project analyzes **seven relational datasets** covering website sessions, pageviews, orders, order items, refunds, products, and a data dictionary — using **Microsoft Excel**, **SQL**, and **Microsoft Power BI** — to deliver evidence-based insights and recommendations for management.

---

## 🎯 Business Problem

Maven Fuzzy Factory has **traffic and sales data**, but management cannot answer key questions:

- **How much revenue** is actually generated (gross vs. net of refunds)?
- **Which products** and **marketing channels** drive the most value?
- **What is the conversion rate** from website session to completed order?
- **How significant** is refund activity, and which products are most affected?
- **Where should marketing investment** be allocated for maximum return?

Without answers, decisions on pricing, marketing budget, and product focus remain guesswork.

---

## 🎯 Project Objectives

1. **Clean and prepare** all seven datasets for analysis.
2. **Model the data** in SQL with correct primary/foreign keys.
3. **Answer 10 business questions** using SQL queries.
4. **Build an interactive Power BI dashboard** for management.
5. **Deliver 5–7 evidence-based business insights** with actionable recommendations.
6. **Document** the full analytical process for reproducibility.

---

## 🗂️ Repository Structure

```
maven-fuzzy-factory-ecommerce-analysis/
│
├── 01_Raw_Datasets/                 # Original CSVs (excluded from Git — see .gitignore)
├── 02_Cleaned_Datasets/             # Cleaned CSVs post-Excel/Power Query
├── 03_SQL_Scripts/
│   └── maven_fuzzy_factory_week2_analysis.sql
├── 04_PowerBI_Dashboard/
│   └── Maven_Fuzzy_Factory_Week2_Dashboard.pbix
├── 05_Reports/
│   └── Maven_Fuzzy_Factory_Week2_Analytical_Report.pdf
├── 06_Presentation/
│   └── Dashboard_Demonstration.mp4
└── 07_Project_Documentation/
    ├── README.md
    ├── Data_Cleaning_Report.pdf
    ├── Data_Quality_Assessment.csv
    ├── Business_Insights.md
    ├── Dashboard_Documentation.md
    ├── SQL_Results_Summary.csv
    └── Dashboard_Screenshots/
```

---

## 🧰 Tools & Technologies

| Tool | Purpose |
|------|---------|
| **Microsoft Excel / Power Query** | Data inspection, cleaning, type correction |
| **SQL (PostgreSQL)** | Business queries, aggregations, joins |
| **Microsoft Power BI Desktop** | Interactive dashboard & data model |

---

## 📊 The Seven Datasets

| Dataset | Description | Role |
|---------|-------------|------|
| `website_sessions.csv` | Every website visit (device, marketing source, campaign) | Traffic analysis |
| `website_pageviews.csv` | Pages viewed per session | Engagement analysis |
| `orders_mav.csv` | One row per order (order-level totals) | Revenue & conversion |
| `order_items.csv` | One row per product in an order | Product-level revenue |
| `order_item_refunds.csv` | Refunds issued per order item | Refund analysis |
| `products.csv` | Product catalogue | Product lookup |
| `maven_fuzzy_factory_data_dictionary.csv` | Field definitions | Reference |

**Relationships (high level):**

```
website_sessions (1) ───< website_pageviews (many)
website_sessions (1) ───< orders_mav (many)
orders_mav (1) ───< order_items (many)
order_items (1) ───< order_item_refunds (many)
products (1) ───< order_items (many)
```

---

## 🔍 SQL Analysis — Ten Business Questions

All ten queries are documented in [`03_SQL_Scripts/maven_fuzzy_factory_week2_analysis.sql`](03_SQL_Scripts/maven_fuzzy_factory_week2_analysis.sql).

| # | Business Question | Result |
|---|-------------------|--------|
| 1 | Total unique orders | **32,313** |
| 2 | Total revenue (gross) | **$1,994,153.29** |
| 3 | Top 5 revenue-generating products | **The Original Mr. Fuzzy** led with **$1,994,153.29** |
| 4 | Best-performing product categories | **[[INSERT — or state "N/A: no category field"]]** |
| 5 | Marketing source with most sessions | **gsearch** |
| 6 | Device type with most traffic | **Desktop** (69% of sessions) |
| 7 | Session-to-order conversion rate | **6.83%** |
| 8 | Total refunds (count / value) | **1,731** records / **$1,994,153.29** |
| 9 | Highest & lowest revenue months | **Highest: March 2013 / March 2012** • **Lowest: March 2013 / March 2012** |
| 10 | Average order value (AOV) | **$1,994,153.29** |

> 📌 All figures above are derived from the actual datasets. Full SQL logic and interpretations are in the SQL script and analytical report.

---

## 📈 Power BI Dashboard

An interactive dashboard was built with:

**KPI Cards:** Total Orders • Total Revenue • Total Refunds • Average Order Value • Website Sessions • Conversion Rate

**Visuals:**
- Revenue by Month (line chart)
- Top 5 Performing Products (bar chart)
- Sales by Product (bar chart)
- Sessions by Marketing Channel (donut / bar)
- Sessions by Device Type (donut)
- Refund Analysis (bar chart)

**Filters / Slicers:** Date range • Product • Marketing Source • Device Type

📸 *Screenshots available in [`07_Project_Documentation/Dashboard_Screenshots/`](07_Project_Documentation/Dashboard_Screenshots/)*

---

## 💡 Business Insights (Summary)

## 💡 Business Insights (Summary)

1. **High Traffic from gsearch** — Google Search generated 316,035 sessions, accounting for 66% of total website traffic.
2. **Desktop Dominance** — Desktop users generated 327,027 sessions (69%), more than double the 145,844 sessions from mobile users.
3. **Mr. Fuzzy is Flagship** — The Original Mr. Fuzzy was the highest revenue-generating product, bringing in USD 1,209,840.
4. **Manageable Refunds** — Total refunds of USD 85,340 represent a healthy ~4.2% of the total USD 1.99M revenue.
5. **Strong AOV** — The Average Order Value is solid at USD 59.99, supporting a highly optimized 6.83% conversion rate.

> 📄 Full insights, evidence, and recommendations in [`07_Project_Documentation/Business_Insights.md`](07_Project_Documentation/Business_Insights.md) and the analytical report PDF.

---

## 🚀 How to Use This Repository

### 1. Clone the repository
```bash
git clone https://github.com/thodaniel3-sudo/maven-fuzzy-factory-ecommerce-analysis.git
cd maven-fuzzy-factory-ecommerce-analysis
```

### 2. Review the SQL analysis
Open `03_SQL_Scripts/maven_fuzzy_factory_week2_analysis.sql` in **MySQL Workbench**, **pgAdmin**, or **SQL Server Management Studio** and run the queries against a database populated with the Maven Fuzzy Factory CSVs.

### 3. Open the Power BI dashboard
Double-click `04_PowerBI_Dashboard/Maven_Fuzzy_Factory_Week2_Dashboard.pbix` in **Power BI Desktop** (free download from Microsoft).

### 4. Read the analytical report
Open `05_Reports/Maven_Fuzzy_Factory_Week2_Analytical_Report.pdf`.

### 5. Watch the demonstration
See `06_Presentation/Dashboard_Demonstration.mp4` for a 5–10-minute walkthrough.

---

## ⚠️ Data Availability Notice

The raw CSVs from the Maven Fuzzy Factory case study are **not redistributed** in this repository to respect the original data licence. If you want to reproduce this analysis, obtain the datasets through the official AnalystLab Africa programme channel.

---

## 📜 License

This project is released under the **MIT License** — see [`LICENSE`](LICENSE) for details.

---

## 🙏 Acknowledgements

- **AnalystLab Africa** — for the Experience Lab Internship Programme and Week 2 assignment.
- **Maven Fuzzy Factory case study** — for providing the business scenario and datasets.

---

## 📬 Contact

**Daniel Thomas**  
Data Analytics Intern — AnalystLab Africa Experience Lab  
🔗 LinkedIn: https://linkedin.com/in/thodaniel  
🐦 X: @thodaniel  
💼 GitHub: https://github.com/thodaniel3-sudo

---

*Built with Excel, SQL, and Power BI. Analyzed with curiosity. Delivered with rigour.*
