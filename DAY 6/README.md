# Sales Trend Analysis – Task 6

## 📌 Objective
Analyze **monthly revenue** and **order volume** using SQL aggregation functions in PostgreSQL (pgAdmin).

This task focuses on:
- Extracting **year** and **month** from dates.
- Grouping data by year and month.
- Calculating **total revenue** using `SUM()`.
- Calculating **order volume** using `COUNT(DISTINCT ...)`.
- Sorting results.
- Filtering for a specific time period.

---
## 📂 Dataset
**Table Name:** `online_sales`  
**Source:** Uploaded CSV (e.g., from Kaggle) containing e-commerce order details.  
**Columns:**
- `order_id` – Unique ID for each order.
- `order_date` – Date the order was placed.
- `amount` – Total order amount.
- `product_id` – ID of the purchased product.
- `customer_id` – Unique customer identifier.
- `region` – Region where the order was placed.
- `payment_method` – Payment method used for the order.
---

## 🛠 Setup Instructions
1. **Create Database in pgAdmin**
   ```sql
   CREATE DATABASE sales_analysis;
   ```

2. **Create Table**
   ```sql
   CREATE TABLE online_sales (
       order_id INT,
       order_date DATE,
       amount NUMERIC(10,2),
       product_id INT
   );
   ```

3. **Import Data**
   - Use **pgAdmin Import/Export Tool** to import the CSV file into `online_sales`.

---

## 📊 Queries

### 1️⃣ Extract Month & Year
```sql
SELECT
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month
FROM
    online_sales;
```

---

### 2️⃣ Group by Year/Month
```sql
SELECT
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month
FROM
    online_sales
GROUP BY
    order_year, order_month;
```

---

### 3️⃣ Calculate Revenue
```sql
SELECT
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(amount) AS total_revenue
FROM
    online_sales
GROUP BY
    order_year, order_month;
```

---

### 4️⃣ Calculate Order Volume
```sql
SELECT
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    COUNT(DISTINCT order_id) AS order_volume
FROM
    online_sales
GROUP BY
    order_year, order_month;
```

---

### 5️⃣ Combine Revenue & Volume
```sql
SELECT
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM
    online_sales
GROUP BY
    order_year, order_month;
```

---

### 6️⃣ Sort by Year & Month
```sql
SELECT
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM
    online_sales
GROUP BY
    order_year, order_month
ORDER BY
    order_year, order_month;
```

---

## 📈 Expected Outcome
The queries will return:
- **Year** & **Month** of each order batch.
- **Total Revenue** for each month.
- **Order Volume** (number of unique orders per month).
- Data sorted by **Year → Month**.

---
![dataset](https://github.com/Javagar-S/DATA-ANALYTICS-PROJECTS/blob/357cec05310e68fdd90f890c1b391e0732ee0bbc/DAY%206/complete%20data.png)

## 🖼 Output Screenshots
*(Paste your screenshots below after running each query in pgAdmin)*

**1️⃣ Extract Month & Year**
![Extract Month & Year](https://github.com/Javagar-S/DATA-ANALYTICS-PROJECTS/blob/357cec05310e68fdd90f890c1b391e0732ee0bbc/DAY%206/q1.png)

**2️⃣ Group by Year/Month**
![Group by Year/Month](https://github.com/Javagar-S/DATA-ANALYTICS-PROJECTS/blob/357cec05310e68fdd90f890c1b391e0732ee0bbc/DAY%206/q2.png)

**3️⃣ Calculate Revenue**
![Calculate Revenue](https://github.com/Javagar-S/DATA-ANALYTICS-PROJECTS/blob/357cec05310e68fdd90f890c1b391e0732ee0bbc/DAY%206/q3.png)

**4️⃣ Calculate Order Volume**
![Calculate Order Volume](https://github.com/Javagar-S/DATA-ANALYTICS-PROJECTS/blob/357cec05310e68fdd90f890c1b391e0732ee0bbc/DAY%206/q4.png)

**5️⃣ Combine Revenue & Volume**
![Combine Revenue & Volume](https://github.com/Javagar-S/DATA-ANALYTICS-PROJECTS/blob/357cec05310e68fdd90f890c1b391e0732ee0bbc/DAY%206/q5.png)

**6️⃣ Sort by Year & Month**
![Sort by Year & Month](https://github.com/Javagar-S/DATA-ANALYTICS-PROJECTS/blob/357cec05310e68fdd90f890c1b391e0732ee0bbc/DAY%206/q6.png)

---

## 📜 Author
**Tools Used:** PostgreSQL, pgAdmin 4, CSV Dataset from Kaggle
