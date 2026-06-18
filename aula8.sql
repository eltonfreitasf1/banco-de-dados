-- 1
INSERT INTO departments
(department_id, department_name, manager_id, location_id)
VALUES
(81, 'Pesquisa', NULL, NULL);

-- 2
UPDATE employees
SET salary = salary * 1.15
WHERE department_id = 60;

-- 3
CREATE TABLE devs_backup AS
SELECT *
FROM employees
WHERE job_id = 'IT_PROG';

-- 4
DELETE FROM departments
WHERE department_id = 81;

-- 5
START TRANSACTION;

UPDATE employees
SET salary = salary * 1.50;

ROLLBACK;