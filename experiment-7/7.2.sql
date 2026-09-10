----------------7.2---------------------
DECLARE
    CURSOR order_cursor IS
        SELECT Amount
        FROM Orders;

    v_amount Orders.Amount%TYPE;
BEGIN
    OPEN order_cursor;

    LOOP
        FETCH order_cursor INTO v_amount;
        EXIT WHEN order_cursor%NOTFOUND;

        IF v_amount > 10000 THEN
            DBMS_OUTPUT.PUT_LINE('High Value');
        END IF;
    END LOOP;

    CLOSE order_cursor;
END;
/