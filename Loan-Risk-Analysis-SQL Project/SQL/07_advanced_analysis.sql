-- Q3: Categorize customers based on credit score
SELECT credit_score,
       CASE
           WHEN credit_score >= 750 THEN 'Excellent'
           WHEN credit_score >= 700 THEN 'Good'
           WHEN credit_score >= 650 THEN 'Average'
           ELSE 'Poor'
       END AS credit_category
FROM credit_profile;

-- Q4: Customers earning more than average income
SELECT *
FROM customers
WHERE person_income >
      (SELECT AVG(person_income) FROM customers);

-- Q5: Rank customers by income
SELECT person_income,
       RANK() OVER (ORDER BY person_income DESC) AS income_rank
FROM customers;

-- Q6: Count high-income customers using CTE
WITH high_income_customers AS (
    SELECT *
    FROM customers
    WHERE person_income > 60000
)
SELECT COUNT(*) FROM high_income_customers;
