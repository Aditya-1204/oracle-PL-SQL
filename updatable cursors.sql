-- updatable cursors
DECLARE
    -- customer cursor
    CURSOR c_customers IS 
        SELECT 
            customer_id, 
            name, 
            credit_limit
        FROM 
            customers
        WHERE 
            credit_limit > 0 
        FOR UPDATE OF credit_limit;
    -- local variables
    l_order_count PLS_INTEGER := 0;
    l_increment   PLS_INTEGER := 0;
    
BEGIN
    FOR r_customer IN c_customers
    LOOP
        -- get the number of orders of the customer
        SELECT COUNT(*)
        INTO l_order_count
        FROM orders
        WHERE customer_id = r_customer.customer_id;
        -- 
        IF l_order_count >= 5 THEN
            l_increment := 5;
        ELSIF l_order_count < 5 AND l_order_count >=2 THEN
            l_increment := 2;
        ELSIF l_increment = 1 THEN
            l_increment := 1;
        ELSE 
            l_increment := 0;
        END IF;
        
        IF l_increment > 0 THEN
            -- update the credit limit
            UPDATE 
                customers
            SET 
                credit_limit = credit_limit * ( 1 +  l_increment/ 100)
            WHERE 
                customer_id = r_customer.customer_id;
            
            -- show the customers whose credits are increased
            dbms_output.put_line('Increase credit for customer ' 
                || r_customer.NAME || ' by ' 
                || l_increment || '%' );
        END IF;
    END LOOP;
END;
/
