

create table employees (
    emp_id int primary key,
    emp_name varchar(100),
    emp_salary numeric(10,2),
    department varchar(100)
);

insert into employees values
(1, 'amit', 50000, 'it'),
(3, 'rahul', 60000, 'hr'),
(5, 'priya', 55000, 'finance');


create or replace procedure add_emp(
p_emp_id int,
p_emp_name varchar(256),
p_emp_salary numeric(10,2),
p_department varchar(256)
)

language plpgsql
as $$
begin
if p_emp_id%2=0
then raise exception 'even not allowed';
end if;
insert into employees(
emp_id,
emp_name,
emp_salary,
department
)values(
p_emp_id,
p_emp_name,
p_emp_salary,
p_department
);
raise notice 'Employee added successfully';
end;
$$;

call add_emp(101, 'amit', 50000, 'it');
call add_emp(102, 'rahul', 60000, 'hr');

select * from employees;