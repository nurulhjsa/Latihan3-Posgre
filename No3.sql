UPDATE employees SET
   commission_pct = 0.10
WHERE job_id = 'IT_PROG' AND employee_id <> 104

--SELECT employee_id, commission_pct, department_id
--FROM employees 
--WHERE employee_id IN (103,104,105,106,107)