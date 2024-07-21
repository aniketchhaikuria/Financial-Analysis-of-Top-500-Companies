# Create database named 'financial_analytics'
CREATE DATABASE financial_analytics;

# Create table 'top_companies' with columns for company data
CREATE TABLE top_companies (
    Serial_Number INT,
    Company_Name VARCHAR(255),
    Market_Cap_Crore NUMERIC,
    Sales_Qtr_Crore NUMERIC
);

# Load data into 'top_companies' table from CSV file
\copy top_companies (Serial_Number, Company_Name, Market_Cap_Crore, Sales_Qtr_Crore) FROM 'C:\\Users\\ca260\\Downloads\\top_companies.csv' DELIMITER ',' CSV HEADER;

# Display first 10 rows from 'top_companies' table
SELECT * FROM top_companies LIMIT 10;

# Calculate average market capitalization of companies
SELECT AVG(Market_Cap_Crore) AS avg_market_cap
FROM top_companies;

# Retrieve top 10 companies by sales quarter revenue
SELECT Company_Name, Sales_Qtr_Crore
FROM top_companies
ORDER BY Sales_Qtr_Crore DESC
LIMIT 10;

# Retrieve top 10 companies by market capitalization
SELECT Company_Name, Mar_Cap_Crore
FROM top_companies
ORDER BY Mar_Cap_Crore DESC
LIMIT 10;