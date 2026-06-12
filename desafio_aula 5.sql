-- 1
SELECT e.last_name,
       j.job_title,
       d.department_name
FROM employees e
JOIN jobs j
    ON e.job_id = j.job_id
JOIN departments d
    ON e.department_id = d.department_id;

-- 2
SELECT e.last_name,
       d.department_name,
       l.city
FROM employees e
JOIN departments d
    ON e.department_id = d.department_id
JOIN locations l
    ON d.location_id = l.location_id;

-- 3
SELECT d.department_id,
       d.department_name,
       e.last_name
FROM departments d
LEFT JOIN employees e
    ON d.department_id = e.department_id
ORDER BY d.department_id;

-- 4
SELECT e.first_name AS funcionario,
       e.last_name AS sobrenome,
       m.first_name AS chefe,
       m.last_name AS sobrenome_chefe
FROM employees e
LEFT JOIN employees m
    ON e.manager_id = m.employee_id;

-- 5
SELECT e.last_name,
       e.salary,
       j.job_title
FROM employees e
JOIN jobs j
    ON e.salary BETWEEN j.min_salary AND j.max_salary;