-- Insert customers
INSERT INTO customers (
    person_age, person_gender, person_education,
    person_income, person_emp_exp, person_home_ownership
)
SELECT DISTINCT
    person_age, person_gender, person_education,
    person_income, person_emp_exp, person_home_ownership
FROM loan_data_raw;

-- Insert credit profiles
INSERT INTO credit_profile (
    credit_score,
    cb_person_cred_hist_length,
    previous_loan_defaults_on_file
)
SELECT DISTINCT
    credit_score,
    cb_person_cred_hist_length,
    previous_loan_defaults_on_file
FROM loan_data_raw;

-- Insert loans with proper mapping
INSERT INTO loans (
    customer_id,
    credit_id,
    loan_amnt,
    loan_intent,
    loan_int_rate,
    loan_percent_income,
    loan_status
)
SELECT
    c.customer_id,
    cp.credit_id,
    ldr.loan_amnt,
    ldr.loan_intent,
    ldr.loan_int_rate,
    ldr.loan_percent_income,
    ldr.loan_status
FROM loan_data_raw ldr
JOIN customers c
  ON ldr.person_age = c.person_age
 AND ldr.person_income = c.person_income
 AND ldr.person_gender = c.person_gender
JOIN credit_profile cp
  ON ldr.credit_score = cp.credit_score
 AND ldr.cb_person_cred_hist_length = cp.cb_person_cred_hist_length;
