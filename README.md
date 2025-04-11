# 📊 Google Data Analytics Capstone: COVID-19 SQL Analysis

This project is the final capstone case study for the **Google Data Analytics Professional Certificate**.  
It demonstrates real-world data exploration and analysis using **SQL** on the **COVID-19 public dataset** in Google BigQuery.

---

## 🧠 Problem Statement

Analyze the impact of COVID-19 across the world by answering key questions related to:
- Confirmed cases
- Death trends
- Vaccination efforts
- Country-level comparisons

The goal is to practice data cleaning, exploration, and visualization using SQL and BigQuery, and to communicate meaningful insights through data storytelling.

---

## 🔧 Tools Used

- **Google BigQuery** (BigQuery Public Datasets)
- **Standard SQL**
- **Google Sheets** *(for optional visualization)*
- **PNG Charts** generated from query results

---

## 📂 Dataset Used

- Dataset: `bigquery-public-data.covid19_open_data.covid19_open_data`
- Source: [Google BigQuery Public Datasets](https://console.cloud.google.com/marketplace/product/bigquery-public-data/covid19-open-data)

---

## 📌 SQL Questions Explored

1. **Top 10 Countries with Highest Confirmed Cases**
   ```sql
   SELECT country_name, MAX(cumulative_confirmed) AS total_cases
   FROM `bigquery-public-data.covid19_open_data.covid19_open_data`
   WHERE date = '2021-12-31'
   GROUP BY country_name
   ORDER BY total_cases DESC
   LIMIT 10;
