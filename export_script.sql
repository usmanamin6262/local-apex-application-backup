SET SQLFORMAT CSV
SET FEEDBACK OFF
SET TRIMSPOOL ON
SET PAGESIZE 0

-- SPOOL command screen ke bajaye file mein data write karti hai
SPOOL E:\git_hub\apex_github_sync\my_apex_data.csv

-- Apni SQL Query
SELECT * FROM EMP;

SPOOL OFF
EXIT;