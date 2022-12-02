DECLARE
    r_product products%rowtype;
    CURSOR c_product (low_price NUMBER, high_price NUMBER)
    IS
        SELECT *
        FROM products
        WHERE list_price BETWEEN low_price AND high_price;
BEGIN
    -- show mass products
    dbms_output.put_line('Mass products: ');
    OPEN c_product(50,100);
    LOOP
        FETCH c_product INTO r_product;
        EXIT WHEN c_product%notfound;
        dbms_output.put_line(r_product.product_name || ': ' ||r_product.list_price);
    END LOOP;
    CLOSE c_product;

    -- show luxury products
    dbms_output.put_line('Luxury products: ');
    OPEN c_product(800,1000);
    LOOP
        FETCH c_product INTO r_product;
        EXIT WHEN c_product%notfound;
        dbms_output.put_line(r_product.product_name || ': ' ||r_product.list_price);
    END LOOP;
    CLOSE c_product;

END;
/


DECLARE
    CURSOR c_revenue (in_year NUMBER :=2017 , in_customer_id NUMBER := 1)
    IS
        SELECT SUM(quantity * unit_price) revenue
        FROM order_items
        INNER JOIN orders USING (order_id)
        WHERE status = 'Shipped' AND EXTRACT( YEAR FROM order_date) = in_year
        GROUP BY customer_id
        HAVING customer_id = in_customer_id;
        
    r_revenue c_revenue%rowtype;
BEGIN
    OPEN c_revenue;
    LOOP
        FETCH c_revenue INTO r_revenue;
        EXIT    WHEN c_revenue%notfound;
        -- show the revenue
        dbms_output.put_line(r_revenue.revenue);
    END LOOP;
    CLOSE c_revenue;
END;
