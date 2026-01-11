# Loan Risk Analysis & Customer Credit Profiling (SQL Project)

## 📌 Project Overview
This project focuses on analyzing loan applicant data to assess customer profiles,
credit risk, and loan performance. A raw CSV dataset was imported into MySQL,
cleaned, normalized into multiple related tables, and analyzed using job-level SQL
queries.

The project demonstrates real-world SQL skills such as database design,
joins, window functions, CTEs, and business-driven analysis.

## 📂 Dataset
- File: `loan_data.csv`
- Domain: Banking & Finance
- Description: Contains customer demographics, loan details, and credit history.

## 🛠 Tools & Technologies
- MySQL
- MySQL Workbench
- SQL

## 🧱 Database Design
The raw dataset was first stored in a staging table and then normalized into
the following relational tables:

- **customers** – customer demographic and income details  
- **credit_profile** – credit score and credit history  
- **loans** – loan amount, intent, interest rate, and loan status  

Primary keys and foreign keys were used to establish relationships between tables.

## ❓ Business Questions Answered

1. How many loan applications are there in total?
2. What is the average income of loan applicants?
3. How does education level affect income?
4. How are customers categorized based on credit score?
5. Which customers earn more than the average income?
6. Who are the top income earners?
7. How does income relate to loan status?
8. Who are the high-risk customers based on low credit score?
9. What loan details are associated with high-risk customers?

## 📊 Key Insights
- Customers with lower credit scores show higher loan risk.
- Higher income customers generally have better loan outcomes.
- Education level has a noticeable impact on average income.
- Certain customer segments require stricter credit evaluation.

## 🧠 SQL Concepts Used
- SELECT, WHERE, ORDER BY  
- GROUP BY, HAVING  
- CASE WHEN  
- Subqueries  
- Window Functions (RANK)  
- Common Table Expressions (CTEs)  
- INNER JOIN, LEFT JOIN  
- Views  
- Database normalization (PK & FK)

## 📁 Project Structure
