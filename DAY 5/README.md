# 🚢 Titanic Passenger Survival Analysis

This project analyzes the famous **Titanic dataset** from Kaggle to explore survival patterns based on passenger demographics, class, and other features.  
The analysis includes **data preprocessing, exploratory data analysis (EDA), and visualization** to uncover hidden insights.

---

## 📂 Dataset Description

The dataset contains details of 891 passengers from the RMS Titanic disaster.  
It includes:

- **PassengerId** – Unique ID
- **Survived** – 0 = No, 1 = Yes
- **Pclass** – Ticket class (1 = 1st, 2 = 2nd, 3 = 3rd)
- **Name** – Passenger name
- **Sex** – Gender
- **Age** – Age in years
- **SibSp** – # of siblings/spouses aboard
- **Parch** – # of parents/children aboard
- **Ticket** – Ticket number
- **Fare** – Passenger fare
- **Cabin** – Cabin number
- **Embarked** – Port of embarkation (C = Cherbourg, Q = Queenstown, S = Southampton)

---

## 🛠️ Technologies Used

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Jupyter Notebook

---

## 📊 Analysis Workflow

1. **Data Loading & Cleaning**
   - Handled missing values in `Age`, `Embarked`, and `Cabin`
   - Converted categorical features into numeric form for analysis

2. **Exploratory Data Analysis (EDA)**
   - Descriptive statistics
   - Visualizing survival trends by gender, class, and fare
   - Correlation analysis

3. **Visualization**
   - Correlation heatmap
   - Survival distribution plots
   - Age vs Fare scatter plots
   - Boxplots & histograms

---

## 🔍 Key Findings from EDA

### 1️⃣ Data Summary
- **Average Age:** ~29.7 years  
- **Average Fare:** ~32.2  
- **Missing Values:**  
  - Age (~20%)  
  - Cabin (many missing)  
  - Embarked (2 missing)  

### 2️⃣ Survival Distribution
- **Total Survived:** 342 passengers (~38%)  
- **By Gender:**  
  - Male: 577  
  - Female: 314  
- **By Class:**  
  - 1st Class: 216  
  - 2nd Class: 184  
  - 3rd Class: 491  

### 3️⃣ Correlation Insights
- Survival is **negatively correlated** with Pclass (-0.34) → Higher classes had better survival chances  
- Fare **positively correlates** with survival (0.26)  
- Age shows weak correlation with survival (-0.077)  

### 4️⃣ Visual Insights
- **Age by Passenger Class:** Higher classes generally had older passengers  
- **Fare by Survival:** Survivors generally paid higher fares  
- **Age vs Fare (Colored by Survival):** Higher survival for younger passengers and high-fare payers  
- **Distributions:**  
  - Age: Most passengers were between 20–40 years old  
  - Fare: Skewed towards lower prices; few extremely high fares  

---

## 📸 Visualizations


![page 1](https://github.com/Javagar-S/DATA-ANALYTICS-PROJECTS/blob/2f13903bfa9c17d1e29d79e5d1bc5e009b1f3390/DAY%205/PAGE%201.png)


![Survival Trends](https://github.com/Javagar-S/DATA-ANALYTICS-PROJECTS/blob/2f13903bfa9c17d1e29d79e5d1bc5e009b1f3390/DAY%205/PAGE%202.png)

---

## 📌 Observations
- Women and children had a significantly higher survival rate.
- Passengers in **1st class** had the highest survival probability.
- Higher ticket prices often indicated better cabins and proximity to lifeboats.
- Age had minimal impact on survival compared to class and gender.

