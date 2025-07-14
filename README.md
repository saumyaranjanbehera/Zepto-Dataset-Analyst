# 🛒 Zepto Product Data - SQL + EDA Analysis Project

This project simulates how real-world data analysts work with e-commerce inventory data using both **SQL** and **Python**. We first perform SQL-based data exploration, cleaning, and transformation, followed by an in-depth Exploratory Data Analysis (EDA) using Python to derive business insights.

---

## 📌 Project Overview

The goal is to simulate how actual data analysts in the e-commerce or retail industries work behind the scenes to:

- ✅ Set up a messy, real-world e-commerce inventory database using SQL
- ✅ Perform SQL-based Data Cleaning to handle null values, remove invalid entries, and convert pricing from paise to rupees
- ✅ Write business-driven SQL queries to derive insights around pricing, inventory, stock availability, revenue and more
- ✅ Perform Python-based Exploratory Data Analysis (EDA) to explore product categories, availability, and pricing inconsistencies visually

---

## 📁 Dataset Overview

The dataset was sourced from Kaggle and originally scraped from Zepto’s product listings. It mimics real-world e-commerce inventory systems, including duplicate SKUs, mixed weights, missing values, and pricing inconsistencies.

### 🧾 Columns:

| Column                  | Description                                          |
|-------------------------|------------------------------------------------------|
| `sku_id`                | Unique identifier (Primary Key)                     |
| `name`                  | Product name                                        |
| `category`              | Category like Snacks, Beverages, etc.              |
| `mrp`                   | MRP in ₹                                             |
| `discountPercent`       | Discount %                                           |
| `discountedSellingPrice`| Final price                                          |
| `availableQuantity`     | Inventory units                                      |
| `weightInGms`           | Product weight                                       |
| `outOfStock`            | Boolean stock flag                                   |
| `quantity`              | Package count/size                                   |
| `price_per_kg`          | ⬆️ Engineered field                                  |
| `total_revenue`         | ⬆️ Engineered field                                  |
| `discountValue`         | ⬆️ Engineered field                                  |

---

## 🛠️ SQL Analysis Workflow

### 1. Database & Table Creation

```sql
CREATE TABLE zepto (
  sku_id SERIAL PRIMARY KEY,
  category VARCHAR(120),
  name VARCHAR(150) NOT NULL,
  mrp NUMERIC(8,2),
  discountPercent NUMERIC(5,2),
  availableQuantity INTEGER,
  discountedSellingPrice NUMERIC(8,2),
  weightInGms INTEGER,
  outOfStock BOOLEAN,
  quantity INTEGER
);




# 🛒 Zepto Product Data - Exploratory Data Analysis (EDA)

This project performs an in-depth Exploratory Data Analysis on a Zepto product dataset to uncover trends, detect anomalies, and generate business insights.

---

## 📦 Dataset Overview

The dataset represents product listings from Zepto, including pricing, discounts, inventory availability, and categories.

| Feature | Description |
|---------|-------------|
| `name` | Product name |
| `Category` | Product category |
| `mrp` | Maximum Retail Price |
| `discountedSellingPrice` | Selling price after discount |
| `discountPercent` | Discount applied in % |
| `availableQuantity` | Units available |
| `outOfStock` | Boolean flag for stock status |
| `weightInGms` | Weight of product in grams |
| ➕ `price_per_kg` | Calculated price per kilogram |
| ➕ `total_revenue` | Projected revenue (discounted price × quantity) |
| ➕ `discountValue` | Difference between MRP and selling price |

---

## 🧪 Tools Used

- 🐍 **Python 3.11+**
- 📦 `pandas`, `ydata-profiling`
- 📈 **Power BI** (for dashboard visualizations)
- 📝 Jupyter Notebook / VS Code

---

## 📊 EDA Highlights

- ✅ Cleaned and enriched the dataset with custom KPIs
- 📌 Identified top categories and products by revenue
- 💰 Analyzed discount patterns and pricing anomalies
- 📉 Detected stockout frequencies and inventory gaps
- 📦 Engineered new features like `price_per_kg` and `total_revenue`

---

## 📁 Files in This Repository

| File | Description |
|------|-------------|
| `zepto_dashboard_ready.csv` | Cleaned and enriched data for analysis |
| `Zepto_EDA_Report.html` | Auto-generated profiling report (open in browser) |
| `Zepto_EDA.ipynb` *(optional)* | Notebook used to process data |
| `Zepto.pbix` *(optional)* | Power BI dashboard file |

---

## 📌 Key Insights

- 💸 Lightweight items show disproportionately high price per kg — good candidates for bundling or value packs.
- 🧺 Frequent stockouts indicate high demand or poor forecasting — could benefit from auto-reordering logic.
- 🎯 High-discount categories may drive traffic but hurt profit — monitor for upselling or loyalty campaigns.

---

## 🚀 How to Run

```bash
pip install ydata-profiling

👨‍💻 About the Author
Hey, I’m Saumya Ranjan Behera — a Data Analyst & Data Engineer

📬 Connect with me on LinkedIn https://www.linkedin.com/in/saumyaranjanbehera/

