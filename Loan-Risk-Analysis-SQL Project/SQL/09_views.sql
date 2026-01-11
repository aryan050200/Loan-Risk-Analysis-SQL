-- View for high-risk loans
CREATE VIEW high_risk_loans AS
SELECT c.person_income,
       cp.credit_score,
       l.loan_amnt
FROM customers c
JOIN loans l ON c.customer_id = l.customer_id
JOIN credit_profile cp ON l.credit_id = cp.credit_id
WHERE cp.credit_score < 650;

-- Use the view
SELECT * FROM high_risk_loans;
