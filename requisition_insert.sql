/* Requisitions create */

SET DEFINE OFF
INSERT INTO Admin.REQUISITION_HEADER (REQ_APPROVER_ID, REQ_CREATOR_ID, REQ_STATUS, REQ_DESC, APPROVAL_DATE, BUDGET_CHECK, REQ_CREATED) 
VALUES (3, 2, 'approved', 'Purchase nongoods chair(5 qty) and Desk Furniture(5 qty)(CASH) for office use', to_date('02-Jan-23', 'DD-MON-RR'), 'true', to_date('02-Jan-23', 'DD-MON-RR'));
INSERT INTO Admin.REQUISITION_HEADER (REQ_APPROVER_ID, REQ_CREATOR_ID, REQ_STATUS, REQ_DESC, APPROVAL_DATE, BUDGET_CHECK, REQ_CREATED) 
VALUES (3, 2, 'approved', 'Purchase nongoods Xerox Machine(1 qty)(Bank) for 5000', to_date('05-Jan-23', 'DD-MON-RR'), 'true', to_date('05-Jan-23', 'DD-MON-RR'));
INSERT INTO Admin.REQUISITION_HEADER (REQ_APPROVER_ID, REQ_CREATOR_ID, REQ_STATUS, REQ_DESC, APPROVAL_DATE, BUDGET_CHECK, REQ_CREATED) 
VALUES (3, 2, 'approved', 'purchase goods Macbook Air (2 qty) Laptop (CASH) for 2000', to_date('07-Jan-23', 'DD-MON-RR'), 'true', to_date('07-Jan-23', 'DD-MON-RR'));
INSERT INTO Admin.REQUISITION_HEADER (REQ_APPROVER_ID, REQ_CREATOR_ID, REQ_STATUS, REQ_DESC, APPROVAL_DATE, BUDGET_CHECK, REQ_CREATED) 
VALUES (3, 2, 'approved', 'purchase goods Apple Ipad Pro (10 qty)& Asus ThinkPad (10 qty)(for Credit) for 10,000', to_date('12-Jan-23', 'DD-MON-RR'), 'true', to_date('12-Jan-23', 'DD-MON-RR'));
INSERT INTO Admin.REQUISITION_HEADER (REQ_APPROVER_ID, REQ_CREATOR_ID, REQ_STATUS, REQ_DESC, APPROVAL_DATE, BUDGET_CHECK, REQ_CREATED) 
VALUES (3, 2, 'approved', 'Purchase goods TV(1),Ipad Pro(4ty),Macbook Air (10 qty)(CASH) for 15000', to_date('02-Feb-23', 'DD-MON-RR'), 'true', to_date('02-Feb-23', 'DD-MON-RR'));
INSERT INTO Admin.REQUISITION_HEADER (REQ_APPROVER_ID, REQ_CREATOR_ID, REQ_STATUS, REQ_DESC, APPROVAL_DATE, BUDGET_CHECK, REQ_CREATED) 
VALUES (3, 2, 'approved', 'Purchase goods HP Laptop(2 qty) and Printer(1 qty)(CASH) of 2000', to_date('04-Feb-23', 'DD-MON-RR'), 'true', to_date('04-Feb-23', 'DD-MON-RR'));
INSERT INTO Admin.REQUISITION_HEADER (REQ_APPROVER_ID, REQ_CREATOR_ID, REQ_STATUS, REQ_DESC, APPROVAL_DATE, BUDGET_CHECK, REQ_CREATED) 
VALUES (3, 2, 'approved', 'purchase goods(1500 - Bank Payment) ASUS notebook (3 qty)& thinkpad(3 qty)', to_date('10-Feb-23', 'DD-MON-RR'), 'true', to_date('10-Feb-23', 'DD-MON-RR'));
INSERT INTO Admin.REQUISITION_HEADER (REQ_APPROVER_ID, REQ_CREATOR_ID, REQ_STATUS, REQ_DESC, APPROVAL_DATE, BUDGET_CHECK, REQ_CREATED) 
VALUES (3, 2, 'approved', 'purchase nongoods (2000 - Bank Payment ) Locker (4 qty)', to_date('12-Feb-23', 'DD-MON-RR'), 'true', to_date('12-Feb-23', 'DD-MON-RR'));
INSERT INTO Admin.REQUISITION_HEADER (REQ_APPROVER_ID, REQ_CREATOR_ID, REQ_STATUS, REQ_DESC, APPROVAL_DATE, BUDGET_CHECK, REQ_CREATED) 
VALUES (3, 2, 'approved', 'purchase goods (3200 $) Macbook Pro on Credit(4 qty)', to_date('15-Feb-23', 'DD-MON-RR'), 'true', to_date('15-Feb-23', 'DD-MON-RR'));


/* Requisition line create */


--commit;