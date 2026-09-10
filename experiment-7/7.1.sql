-----------------7.1-------------------------
DECLARE
    CURSOR emp_cursor IS
        SELECT Name, Salary
        FROM Staff
        ORDER BY Salary DESC
        FETCH FIRST 5 ROWS ONLY;

    v_name Staff.Name%TYPE;
    v_salary Staff.Salary%TYPE;
BEGIN
    OPEN emp_cursor;

    LOOP
        FETCH emp_cursor INTO v_name, v_salary;
        EXIT WHEN emp_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE('Name: ' || v_name ||
                             ', Salary: ' || v_salary);
    END LOOP;

    CLOSE emp_cursor;
END;
/