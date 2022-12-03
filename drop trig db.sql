CREATE OR REPLACE TRIGGER customers_audit_trg
    AFTER 
    UPDATE OR DELETE 
    ON customers
    FOR EACH ROW    
DECLARE
   l_transaction VARCHAR2(10);
BEGIN
   l_transaction := CASE  
         WHEN UPDATING THEN 'UPDATE'
         WHEN DELETING THEN 'DELETE'
   END;
   INSERT INTO audits (table_name, transaction_name, by_user, transaction_date)
   VALUES('CUSTOMERS', l_transaction, USER, SYSDATE);
END;
drop trigger customers_audit_trg;
