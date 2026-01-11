-- Q7: Relationship between income and loan status
SELECT c.person_income,
       l.loan_amnt,
       l.loan_status
FROM customers c
INNER JOIN loans l
ON c.customer_id = l.customer_id;

-- Q8: Loan status by gender (LEFT JOIN)
SELECT c.person_gender,
       l.loan_status
FROM customers c
LEFT JOIN loans l
ON c.customer_id = l.customer_id;
