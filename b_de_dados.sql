select *
from employees;
 
select department_name, location_id
from departments;
 
select job_id, job_title, max_salary
from jobs;
 
select job_title, max_salary, job_id
from jobs;
 
select first_name, last_name, email, phone_number
from employees;
 
select last_name, salary, salary + 500
from employees;
 
select last_name, salary, salary * 12
from employees;
 
select last_name, salary, salary * 12 + 1000
from employees;
 
select last_name, salary, salary * (12 + 1000)
from employees;
 
select last_name, job_id, salary, commission_pct,
       salary * 12 * commission_pct
from employees;
 
select last_name as "Sobrenome",
       salary as "Salário Mensal",
       salary * 12 as "Salário Anual"
from employees;
 
select first_name || ' ' || last_name || ' (E-mail: ' || email || ')' as "Identificação"
from employees;
 
select last_name || ' trabalha no cargo ' || job_id || ' e ganha R$ ' || salary || ' por mês.' as "Apresentação do Funcionário"
from employees;
 
select job_title || ': de R$ ' || min_salary || ' ate R$ ' || max_salary as "Faixa Salarial"
from jobs;
 
select distinct department_id
from employees;

select distinct job_id from employees;
 
select distinct department_id, job_id from employees;
 
select 
    last_name || ', ' || first_name as "funcionário",
    job_id as "cargo",
    
    salary as "salário mensal",
    salary * 12 as "salário anual",
    salary * 12 * commission_pct as "comissão anual",
    (salary * 12) + (salary * 12 * commission_pct) as "remuneração anual total"

from employees;
