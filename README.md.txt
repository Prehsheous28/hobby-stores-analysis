# 🏬 Hobby Stores Sales Analysis (SQL Project)

## 📌 Project Overview

This project involves a detailed SQL-based analysis of a retail case study for **Hobby Stores**, a leading U.S. retail chain. The objective is to uncover insights from customer, product, and sales data to support strategic decisions around marketing, inventory, and customer satisfaction.

The project was built using **PostgreSQL**, and data was imported from three primary datasets.

---

## 🧾 Datasets Used

| Dataset Name       | Description                                                                 |
|--------------------|-----------------------------------------------------------------------------|
| `master_customer`  | Contains customer demographic and geographic details                        |
| `master_product`   | Includes product-level information like category and sub-category           |
| `store_data`       | Contains transactional data for orders including dates, sales, and shipping |

All datasets were provided as `.csv` files and imported into PostgreSQL for querying and analysis.

---

## 🔧 Tools & Technologies

- **PostgreSQL**
- **SQL (DDL, DML, JOINs, WHERE, GROUP BY, LIMIT, etc.)**
- **CSV (Data ingestion)**

---

## 🔍 Key Analysis Tasks Performed

- Database and table creation for all three datasets.
- Data import from CSV files into PostgreSQL.
- Joining tables to combine customer, product, and transaction data.
- Counting unique customers and products.
- Filtering customer data by age using `WHERE` clause.
- Analyzing customer age distribution across U.S. regions.
- Identifying top-performing customer segments.
- Calculating top product categories by sales.
- Using `LIMIT` to return top-N records in queries.

---

## 📊 Sample Business Questions Answered

- How many unique customers and products exist in the dataset?
- Which age groups dominate in each U.S. region?
- Which customer segments are the most active?
- What product categories drive the highest sales?
- Who are the 30-year-old customers in the database?

---

## 🧠 Few Sample Insights

> - Over **1,000 unique customers** were identified, with the **consumer segment** showing the highest transaction volume.
> - **Office Supplies** category generated the most revenue.
> - The **Western region** had a higher concentration of younger customers (20–35 age group).

---

## 📂 Project Files

/hobby-stores-analysis
│
├── hobby stores analysis.sql # All SQL queries used for analysis
├── master_customer.csv # Customer dataset
├── master_product.csv # Product dataset
├── store_data.csv # Transactional store data
└── README.md # Project overview and documentation
---

## 🏁 How to Run the Project

1. Create a database in PostgreSQL (e.g., `hobby_stores`)
2. Use the provided SQL script to:
   - Create and populate tables
   - Perform analysis queries
3. Modify queries to explore more specific business questions

---

## 📬 Contact

If you have any feedback or questions, feel free to connect on [LinkedIn](https://www.linkedin.com/in/precious-analikwu-6844082b5).
