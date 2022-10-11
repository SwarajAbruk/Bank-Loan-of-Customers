SELECT * FROM cdf;

-- KPI 1
SELECT YEAR, SUM(loan_amnt) FROM cdf group by YEAR order by YEAR;

-- KPI 2
SELECT grade, sub_grade, sum(revol_bal) FROM cdf group by grade, sub_grade order by grade;

-- KPI 3

SELECT verification_status, sum(total_pymnt) from cdf group by verification_status;

-- KPI 4
SELECT addr_state, last_pymnt_d, count(loan_status), loan_status from cdf group by addr_state, last_pymnt_d order by addr_state, last_pymnt_d;

-- KPI 5
SELECT home_ownership, count(home_ownership), last_pymnt_d FROM cdf group by home_ownership, last_pymnt_d order by home_ownership;