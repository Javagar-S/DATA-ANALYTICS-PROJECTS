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

## 📅 Example: Limit to Specific Time Period (Jan–Jun 2024)
```sql
SELECT
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM
    online_sales
WHERE
    EXTRACT(YEAR FROM order_date) = 2024
    AND EXTRACT(MONTH FROM order_date) BETWEEN 1 AND 6
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

## 🖼 Output Screenshots
*(Paste your screenshots below after running each query in pgAdmin)*

**1️⃣ Extract Month & Year**
![Extract Month & Year](images/extract_month_year.png)

**2️⃣ Group by Year/Month**
![Group by Year/Month](images/group_by_year_month.png)

**3️⃣ Calculate Revenue**
![Calculate Revenue](images/calculate_revenue.png)

**4️⃣ Calculate Order Volume**
![Calculate Order Volume](images/calculate_order_volume.png)

**5️⃣ Combine Revenue & Volume**
![Combine Revenue & Volume](images/combine_revenue_volume.png)

**6️⃣ Sort by Year & Month**
![Sort by Year & Month](images/sort_by_year_month.png)

**7️⃣ Filtered Period (Jan–Jun 2024)**
![Filtered Period](images/filtered_period.png)

---

## 📜 Author
**Tools Used:** PostgreSQL, pgAdmin 4, CSV Dataset from Kaggle
