-- Q1: Customers earning more than 50,000
SELECT *
FROM customers
WHERE person_income > 50000;

-- Q2: Average income by education (only above 40,000)
SELECT person_education,
       AVG(person_income) AS avg_income
FROM customers
GROUP BY person_education
HAVING AVG(person_income) > 40000;
