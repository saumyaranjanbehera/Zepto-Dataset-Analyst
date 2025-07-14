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
