# 🛒 Customer Shopping Behavior Analysis

## 📌 Project Overview
This project analyzes customer shopping behavior using transactional data from **3,900 purchases** across multiple product categories.  
The goal is to uncover insights into customer spending patterns, product preferences, and subscription behavior to support better business decisions.

---

## 📸 Dashboard Preview
![Dashboard Preview](https://your-image-link-here.com/dashboard.png)

---

## 🔗 Project Links

- 📊 **Dataset**: https://your-data-link-here.com  
- 🧠 **Jupyter Notebook (EDA)**: https://your-notebook-link-here.com  
- 🗄️ **SQL Queries**: https://your-sql-link-here.com  
- 📈 **Power BI Dashboard / PPT**: https://your-ppt-link-here.com  

---

## 📊 Dataset Summary
- **Rows:** 3,900  
- **Columns:** 18  

### 🔑 Key Features
- Customer demographics: Age, Gender, Location, Subscription Status  
- Purchase details: Item Purchased, Category, Purchase Amount, Season, Size, Color  
- Shopping behavior:
  - Discount Applied  
  - Previous Purchases  
  - Frequency of Purchases  
  - Review Rating  
  - Shipping Type  

> ⚠️ Missing Values: 37 values in `review_rating`

---

## 🧹 Data Cleaning & EDA (Python)

### ✔ Steps Performed
- Loaded dataset using **pandas**
- Used `df.info()` and `df.describe()` for exploration
- Handled missing values:
  - Filled `review_rating` using **median by category**
- Standardized column names to **snake_case**
- Feature Engineering:
  - Created `age_group`
  - Created `purchase_frequency_days`
- Removed redundant column:
  - Dropped `promo_code_used`
- Exported cleaned data to **PostgreSQL**

---

## 🗄️ Data Analysis (SQL)

### 🔍 Business Questions Answered
1. Revenue comparison by **gender**
2. Customers using discounts but spending **above average**
3. **Top 5 products** by rating
4. **Shipping type comparison** (Standard vs Express)
5. **Subscribers vs Non-subscribers** analysis
6. Products highly dependent on **discounts**
7. Customer segmentation:
   - New  
   - Returning  
   - Loyal  
8. **Top 3 products per category**
9. Repeat buyers vs **subscription behavior**
10. Revenue contribution by **age group**

---

## 📈 Dashboard (Power BI)
Created an interactive dashboard to visualize:
- Revenue trends  
- Customer segments  
- Product performance  
- Purchase behavior  

---

## 💡 Business Recommendations
- 🚀 Promote subscription plans with exclusive benefits  
- 🎯 Introduce loyalty programs for repeat customers  
- 💸 Optimize discount strategies  
- ⭐ Highlight top-rated products  
- 📊 Focus on high-value customer segments  

---

## 🛠️ Tech Stack
- Python (Pandas, NumPy)  
- PostgreSQL  
- Power BI  

---

---

## ✅ Conclusion
This project demonstrates how **Python, SQL, and Power BI** can be combined to extract actionable insights from raw data and support business decision-making.