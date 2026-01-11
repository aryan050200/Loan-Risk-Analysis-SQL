-- Check for NULL or invalid values
SELECT *
FROM loan_data_raw
WHERE person_income IS NULL
   OR credit_score IS NULL;

-- Disable safe updates
SET SQL_SAFE_UPDATES = 0;

-- Remove invalid income records
DELETE FROM loan_data_raw
WHERE person_income <= 0;
