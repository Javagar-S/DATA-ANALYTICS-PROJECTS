
# Data Analyst Internship – Task 1  
## Mall Customer Segmentation – Data Cleaning and Preprocessing

This project is part of a data analyst internship task focused on cleaning and preprocessing a raw dataset.
The dataset contains demographic details of mall customers such as 
including missing values,
inconsistent text formats,
duplicate entries,
and incorrect data types.

## Dataset Overview

| Column        | Description                                |
|---------------|--------------------------------------------|
| Full Name     | Customer's full name                       |
| Gender        | Gender (in inconsistent formats)           |
| Country       | Country name (varied casing/spelling)      |
| Age           | Age of the customer (missing/nulls)        |
| Date of Birth | Date of Birth (in varied formats)          |

## Cleaning Steps Performed

1. **Column Renaming**  
   Renamed all headers to lowercase and replaced spaces with underscores (e.g., `Full Name` becomes `full_name`).

2. **Standardizing Gender**  
   Converted values like `M`, `m`, `Male`, `female`, `F`, etc. to consistent values: `male`, `female`.

3. **Country Normalization**  
   Standardized variations such as `U.S.A`, `United States`, `usa` to a single format: `usa`.

4. **Date Format Handling**  
   Converted `date_of_birth` to datetime using day-first format (`dd-mm-yyyy`). Invalid entries were coerced to null.

5. **Age Fixes**  
   For rows where `age` was missing but `date_of_birth` was valid, calculated age using the formula: `2025 - birth year`.

6. **Data Type Corrections**  
   Converted `age` to integer format using `Int64` to allow null-safe operations.

7. **Duplicate Removal**  
   Removed exact duplicate rows from the dataset.

8. **Row Filtering**  
   Removed rows missing critical fields such as `full_name`, `gender`, or `country`.

## Files Included

- `Cleaned_Dataset.csv` – The final cleaned dataset.
- `MALL_CUSTOMER_SEGMENTAION.ipynb` – Python script used for preprocessing.(JUPYTER NOTEBOOK)
- `README.md` – Project documentation file.

## Tools Used

- Python (Pandas, NumPy)
- VS Code or Jupyter Notebook
- Git and GitHub
