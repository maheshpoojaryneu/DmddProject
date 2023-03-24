--CLEANUP SCRIPT
set serveroutput on
declare
    v_role_exists varchar(1) := 'Y';
    v_sql varchar(2000);
begin
   dbms_output.put_line('Start role cleanup');
   for i in (select distinct role
from DBA_ROLES
where role in (
'REQUESTOR',
'PROCUREMENT_ANALYST',
'VENDOR',
'ACCOUNTANT',
'FINANCE_OFFICER',
'USER_ADMIN',
'INVENTORY_ADMIN')
   )
   loop
   dbms_output.put_line('....Drop role '||i.role);
   begin
       select 'Y' into v_role_exists
       from DBA_ROLES
       where role= i.role;

       v_sql := 'drop role '||i.role;
       execute immediate v_sql;
       dbms_output.put_line('........Role '||i.role||' dropped successfully');
       
   exception
       when no_data_found then
           dbms_output.put_line('........Role already dropped');
   end;
   end loop;
   dbms_output.put_line('Role cleanup successfully completed');
exception
   when others then
      dbms_output.put_line('Failed to execute code:'||sqlerrm);
end;
/


CREATE ROLE REQUESTOR;
CREATE ROLE PROCUREMENT_ANALYST;
CREATE ROLE VENDOR;
CREATE ROLE ACCOUNTANT;
CREATE ROLE FINANCE_OFFICER;
CREATE ROLE USER_ADMIN;
CREATE ROLE INVENTORY_ADMIN;

GRANT  INSERT, SELECT, UPDATE, DELETE  ON ADMIN.requisition_header TO REQUESTOR;
GRANT  INSERT, SELECT, UPDATE, DELETE  ON ADMIN.REQUISITION_HEADER TO REQUESTOR;	
GRANT  SELECT ON ADMIN.item_vendor TO REQUESTOR;
GRANT  INSERT, SELECT,UPDATE, DELETE  ON ADMIN.requisition_header TO "PROCUREMENT_ANALYST";	
GRANT  INSERT, SELECT,UPDATE, DELETE  ON ADMIN.requisition_line TO "PROCUREMENT_ANALYST";
GRANT  INSERT, SELECT,UPDATE, DELETE  ON ADMIN.purchase_order_header TO "PROCUREMENT_ANALYST";	
GRANT  INSERT, SELECT,UPDATE, DELETE  ON ADMIN.purchase_order_line TO "PROCUREMENT_ANALYST";
GRANT  SELECT ON ADMIN.item_vendor TO "PROCUREMENT_ANALYST";
GRANT  SELECT ON ADMIN.item_vendor TO VENDOR;
GRANT  SELECT ON ADMIN.purchase_order_line TO VENDOR;
GRANT  INSERT, SELECT,UPDATE, DELETE  ON ADMIN.invoice TO VENDOR;	
GRANT  INSERT, SELECT,UPDATE, DELETE  ON ADMIN.item_vendor TO VENDOR;	
GRANT  SELECT ON ADMIN.item TO Vendor;
GRANT  SELECT ON ADMIN.invoice TO Accountant;
GRANT  INSERT, SELECT,UPDATE, DELETE  ON ADMIN.voucher TO ACCOUNTANT;	
GRANT  INSERT, SELECT,UPDATE, DELETE  ON ADMIN.journal_header TO ACCOUNTANT;	
GRANT  INSERT, SELECT,UPDATE, DELETE  ON ADMIN.journal_line TO ACCOUNTANT;	
GRANT  INSERT, SELECT,UPDATE, DELETE  ON ADMIN.account TO ACCOUNTANT;	
GRANT  INSERT, SELECT,UPDATE, DELETE  ON ADMIN.journal_header TO "FINANCE_OFFICER";	
GRANT  INSERT, SELECT,UPDATE, DELETE  ON ADMIN.journal_line TO "FINANCE_OFFICER";	
GRANT  INSERT, SELECT,UPDATE, DELETE  ON ADMIN.account TO "FINANCE_OFFICER";	
GRANT  INSERT, SELECT,UPDATE, DELETE  ON ADMIN.ledger TO "FINANCE_OFFICER";	
GRANT  INSERT, SELECT,UPDATE, DELETE  ON ADMIN.user_table TO "USER_ADMIN";	
GRANT  INSERT, SELECT,UPDATE, DELETE  ON ADMIN.address TO "USER_ADMIN";	
GRANT  INSERT, SELECT,UPDATE, DELETE  ON ADMIN.contact TO "USER_ADMIN";	
GRANT  INSERT, SELECT,UPDATE, DELETE  ON ADMIN.item TO "INVENTORY_ADMIN";	
GRANT  INSERT, SELECT,UPDATE, DELETE  ON ADMIN.vendor TO "INVENTORY_ADMIN";	

