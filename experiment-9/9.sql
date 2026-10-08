create or replace trigger trg_salary_hike_limit
before update of salary on salary_hike
for each row
declare
    ex_salary_hike_limit exception;
begin
    if :new.salary > :old.salary * 1.15 then
        raise ex_salary_hike_limit;
    end if;
exception
    when ex_salary_hike_limit then
        raise_application_error(-20051, 'salary increase cannot exceed 15% of old salary');
end;
/