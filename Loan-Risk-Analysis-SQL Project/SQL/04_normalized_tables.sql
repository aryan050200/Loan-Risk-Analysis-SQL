-- Customers table
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    person_age INT,
    person_gender VARCHAR(10),
    person_education VARCHAR(30),
    person_income INT,
    person_emp_exp INT,
    person_home_ownership VARCHAR(20)
);

-- Credit profile table
CREATE TABLE credit_profile (
    credit_id INT AUTO_INCREMENT PRIMARY KEY,
    credit_score INT,
    cb_person_cred_hist_length INT,
    previous_loan_defaults_on_file VARCHAR(5)
);

-- Loans table
CREATE TABLE loans (
    loan_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    credit_id INT,
    loan_amnt INT,
    loan_intent VARCHAR(30),
    loan_int_rate DECIMAL(5,2),
    loan_percent_income DECIMAL(5,2),
    loan_status TINYINT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (credit_id) REFERENCES credit_profile(credit_id)
);
