select last_name,salary
from employees
where salary between 5000 and 12000;

SELECT first_name, last_name, job_id
FROM employees
WHERE job_id IN ('IT_PROG', 'SA_REP', 'ST_MAN');

select first_name, last_name
from employees
where first_name like 'k%';

select first_name, last_name
from employees
where commission_pct is null;

SELECT first_name, last_name, department_id, salary
FROM employees
ORDER BY department_id ASC, salary DESC;