# 🐘 Advanced SQL Toolbox: PostgreSQL Functional Mastery on Northwind DB

This project is built as a follow-up to the [Functions for Manipulating Data in PostgreSQL](https://www.datacamp.com/) course on DataCamp.  
It demonstrates advanced PostgreSQL techniques across four functional areas—each explored with **five unique queries** using the classic **Northwind database** .

---

## 🎯 Objectives

✔ Apply PostgreSQL data manipulation concepts in a real dataset  
✔ Build a structured SQL portfolio using functional best practices  
✔ Demonstrate readiness for roles involving data engineering and analytics  
✔ Explore PostgreSQL’s full-text search and advanced extensions  

---

## 📦 Dataset

**Northwind PostgreSQL Database**  
The Northwind database contains a set of tables that simulate a real-world sales and inventory system including customers, orders, employees, products, suppliers, and shippers.

---

## 🧠 Project Structure
```
postgresql-northwind-functional-project/
│
├── queries/
│ ├── 01_data_types.sql
│ ├── 02_date_time_functions.sql
│ ├── 03_text_parsing.sql
│ └── 04_full_text_search_extensions.sql
│
├── screenshots/
│ └── pgadmin_sample_results.png
│
└── README.md
```


---

## 📊 Chapter-wise Query Summary

### 1️⃣ Overview of Common Data Types
- Inspect schema and column data types using `information_schema`
- Find columns using numeric, array, or user-defined types
- Detect nullable fields and defaults across the schema

### 2️⃣ Working with DATE/TIME Functions and Operators
- Calculate order delays using `INTERVAL` and subtraction
- Use `DATE_TRUNC()` to aggregate orders by month
- Compute average shipment time and expected delivery dates

### 3️⃣ Parsing and Manipulating Text
- Clean and transform string data using `UPPER`, `REPLACE`, `POSITION`, etc.
- Extract keywords or substrings from product names
- Add padded formatting or remove trailing whitespaces

### 4️⃣ Full-text Search and PostgreSQL Extensions
- Search with `tsvector` and `to_tsquery` for product names
- Use `pg_trgm` to measure similarity between customers
- Explore `Levenshtein` distance for fuzzy matching

---

## 🔧 Tools Used

- **PostgreSQL** 14+
- **PgAdmin 4**
- **DataCamp** (Course Provider)
- **Northwind DB** for PostgreSQL

---

## 📸 Sample Screenshots

Screenshots of query results and visual outputs are included in the `/screenshots` folder for demo purposes.

---


## 📬 Contact

**Author:** [Cem Ozcelik]  
**LinkedIn:** [https://www.linkedin.com/in/cemozcel%C4%B1k/]  

---
