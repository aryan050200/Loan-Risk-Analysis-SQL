-- Raw table to import CSV data
CREATE TABLE loan_data_raw (
    person_age INT,
    person_gender VARCHAR(10),
    person_education VARCHAR(30),
    person_income INT,
    person_emp_exp INT,
    person_home_ownership VARCHAR(20),
    loan_amnt INT,
    loan_intent VARCHAR(30),
    loan_int_rate DECIMAL(5,2),
    loan_percent_income DECIMAL(5,2),
    cb_person_cred_hist_length INT,
    credit_score INT,
    previous_loan_defaults_on_file VARCHAR(5),
    loan_status TINYINT
);

-- Total records check
SELECT COUNT(*) FROM loan_data_raw;
