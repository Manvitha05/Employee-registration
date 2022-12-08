/* registering the employee data */
CREATE TABLE register(
     employee_name varchar2(30),
     employee_id varchar2(10),
     mobile_no varchar2(10),
     email_id varchar2(100),
     password varchar2(20),
     pan_no varchar2(30),
     bank_accno varchar2(30),
     emp_address varchar2(50)
);

/Procedure to insert record into database table/
CREATE OR REPLACE PROCEDURE insertion(
     employee_name varchar2(30),
     employee_id varchar2(10),
     mobile_no varchar2(10),
     email_id varchar2(100),
     password varchar2(20),
     pan_no varchar2(30),
     bank_accno varchar2(30),
     emp_address varchar2(50) 
)IS
BEGIN
INSERT INTO register VALUES(employee_name, employee_id, mobile_no, email_id, password, pan_no, bank_accno, emp_address);
COMMIT;
END;
/

/*Function to verify Login */

CREATE OR REPLACE FUNCTION l_check(
  email varchar2
  ,pwd varchar2
) RETURN number IS rn number;

BEGIN
SELECT COUNT(*) INTO rn FROM register WHERE email_id=email AND p_wrd=pwd;
IF rn>0 THEN
   RETURN 1;
ELSE
   RETURN 0;
END IF;
END;
/

/*Function to verify pan number*/


CREATE OR REPLACE FUNCTION 2_check(
  pan_no
) RETURN number IS rn number;

BEGIN
SELECT COUNT(*) INTO rn FROM register WHERE pan_no=number;
IF rn>0 THEN
   RETURN 1;
ELSE
   RETURN 0;
END IF;
END;
/

/*Function to verify bank account number*/

CREATE OR REPLACE FUNCTION 3_check(
  bank_accno
) RETURN number IS rn number;

BEGIN
SELECT COUNT(*) INTO rn FROM register WHERE bank_accno=number;
IF rn>0 THEN
   RETURN 1;
ELSE
   RETURN 0;
END IF;
END;
/
