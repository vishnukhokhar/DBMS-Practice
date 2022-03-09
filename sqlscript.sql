select * from emp 
;

select * from employee 
;

CREATE TABLE Employee(EMP_ID INT PRIMARY KEY, 
FIRST_NAME VARCHAR(10), 
LAST_NAME VARCHAR(20), 
BIRTHDATE DATE, 
SEX VARCHAR(10), 
SALARY INT, SUP_ID INT, 
BRANCH_ID INT);

CREATE TABLE BRANCH(BRANCH_ID INT PRIMARY KEY, 
BRANCH_NAME VARCHAR(20), 
MGR_ID INT, 
MGR_START_DATE DATE, 
FOREIGN KEY (MGR_ID) REFERENCES Employee(EMP_ID) ON DELETE SET NULL);

CREATE TABLE CLIENT(CLIENT_ID INT PRIMARY KEY, 
CLIENT_NAME VARCHAR(20), 
BRANCH_ID INT, 
FOREIGN KEY (BRANCH_ID) REFERENCES BRANCH(BRANCH_ID) ON DELETE SET NULL);

ALTER TABLE Employee 
ADD FOREIGN KEY(BRANCH_ID) 
REFERENCES BRANCH(BRANCH_ID) 
ON DELETE SET NULL;

CREATE TABLE WORKS_WITH(EMP_ID INT, 
CLIENT_ID INT, 
TOTAL_SALES INT, 
PRIMARY KEY(CLIENT_ID, EMP_ID), 
FOREIGN KEY(EMP_ID) REFERENCES Employee(EMP_ID) ON DELETE CASCADE, 
FOREIGN KEY (CLIENT_ID) REFERENCES CLIENT(CLIENT_ID) ON DELETE CASCADE);

CREATE TABLE BRANCH_SUPPLIER(BRANCH_ID INT,  
SUPPLIER_NAME VARCHAR(25), 
SUPPLY_TYPE VARCHAR(20), 
PRIMARY KEY(BRANCH_ID, SUPPLIER_NAME), 
FOREIGN KEY(BRANCH_ID) REFERENCES BRANCH(BRANCH_ID) ON DELETE CASCADE);

INSERT INTO Employee VALUES(100, 'David', 'Wallace',DATE'1967-11-17', 'M', 250000, NULL, NULL);

INSERT INTO BRANCH VALUES(1,'CORPORATE',100,DATE'2006-02-23');

UPDATE Employee  
SET BRANCH_ID=1 
WHERE EMP_ID=100;

INSERT INTO employee VALUES(101, 'Jan', 'Levinson', DATE'1961-05-11', 'F', 110000, 100, 1);

INSERT INTO employee VALUES(102, 'Michael', 'Scott',DATE '1964-03-15', 'M', 75000, 100, NULL);

INSERT INTO branch VALUES(2, 'Scranton', 102,DATE '1992-04-06');

UPDATE Employee 
SET BRANCH_ID=2 
WHERE EMP_ID=102;

INSERT INTO employee VALUES(103, 'Angela', 'Martin', DATE'1971-06-25', 'F', 63000, 102, 2);

INSERT INTO employee VALUES(104, 'Kelly', 'Kapoor',DATE '1980-02-05', 'F', 55000, 102, 2);

INSERT INTO employee VALUES(105, 'Stanley', 'Hudson',DATE '1958-02-19', 'M', 69000, 102, 2);

INSERT INTO employee VALUES(106, 'Josh', 'Porter',DATE '1969-09-05', 'M', 78000, 100, NULL);

INSERT INTO branch VALUES(3, 'Stamford', 106, DATE'1998-02-13');

UPDATE EMPLOYEE  
SET BRANCH_ID=3 
WHERE EMP_ID=106;

INSERT INTO employee VALUES(107, 'Andy', 'Bernard', DATE'1973-07-22', 'M', 65000, 106, 3);

INSERT INTO employee VALUES(108, 'Jim', 'Halpert',DATE '1978-10-01', 'M', 71000, 106, 3);

INSERT INTO branch_supplier VALUES(2, 'Hammer Mill', 'Paper');

INSERT INTO branch_supplier VALUES(2, 'Uni-ball', 'Writing Utensils');

INSERT INTO branch_supplier VALUES(3, 'Patriot Paper', 'Paper');

INSERT INTO branch_supplier VALUES(2, 'J.T. Forms & Labels', 'Custom Forms');

INSERT INTO branch_supplier VALUES(3, 'Uni-ball', 'Writing Utensils');

INSERT INTO branch_supplier VALUES(3, 'Hammer Mill', 'Paper');

INSERT INTO branch_supplier VALUES(3, 'Stamford Lables', 'Custom Forms');

INSERT INTO client VALUES(400, 'Dunmore Highschool', 2);

INSERT INTO client VALUES(401, 'Lackawana Country', 2);

INSERT INTO client VALUES(402, 'FedEx', 3);

INSERT INTO client VALUES(403, 'John Daly Law, LLC', 3);

INSERT INTO client VALUES(404, 'Scranton Whitepages', 2);

INSERT INTO client VALUES(405, 'Times Newspaper', 3);

INSERT INTO client VALUES(406, 'FedEx', 2);

INSERT INTO works_with VALUES(105, 400, 55000);

INSERT INTO works_with VALUES(102, 401, 267000);

INSERT INTO works_with VALUES(108, 402, 22500);

INSERT INTO works_with VALUES(107, 403, 5000);

INSERT INTO works_with VALUES(108, 403, 12000);

INSERT INTO works_with VALUES(105, 404, 33000);

INSERT INTO works_with VALUES(107, 405, 26000);

INSERT INTO works_with VALUES(102, 406, 15000);

INSERT INTO works_with VALUES(105, 406, 130000);

SELECT * FROM EMPLOYEE;

SELECT * FROM EMPLOYEE;

SELECT * FROM EMPLOYEE 
ORDER BY EMP_ID ASC;

select * employee 
;

select *  from employee 
;

select count(emp_id);

select count(emp_id) 
from Employee;

select avg(salary) 
from employee;

select sum(salary) 
from employee;

select first_name as fore_name,last_name as surname 
from employee;

select count(sex), sex 
from employee 
group by;

select count(sex), sex 
from employee 
group by ;

select * from employee 
;

select sex 
from employee;

select sex 
from employee;

select sex 
from employee 
group by;

select sex 
from employee 
group by;

select count(sex), sex 
from employee 
group by asc;

select count(sex), sex 
from employee 
group by asc;

select count(sex), sex 
from employee 
group by ;

select  sex 
from employee 
group by ;

select  sex 
from employee;

select count (sex) 
from employee;

select count (sex), sex 
from employee;

select count (sex), sex 
from employee 
group by;

select count (sex), sex 
from employee 
group by;

select count (sex), sex 
from employee 
group by sex;

select *  
from branch_supplier 
where supplier_name like '%ll%";

select *  
from branch_supplier 
where supplier_name like '%ll";

select *  
from branch_supplier 
where supplier_name like '%ll%';

select * from employee;

select *  
from branch_supplier 
where supplier_name like '%ll%';

select * 
from employee 
where birth_date like '____02%';

select * 
from employee;

select * 
from employee;

select * 
from employee 
where birthdate like '____-02%';

select * 
from employee 
where birthdate like '____-10%';

select * 
from employee 
where birthdate like '__-nov%';

select * 
from employee 
where last_name like '___tt%';

select first_name from employee 
 
union  
select branch_name from branch;

select employee.emp_id, employee.first_name, branch.branch_name 
from employee 
join branch  
on employee.emp_id=branch.branch_name;

select *from employee 
;

select *from branch 
;

select employee.emp_id, employee.first_name, branch.branch_name 
from employee 
join branch  
on employee.emp_id=branch.mgr.id;

select employee.emp_id, employee.first_name, branch.branch_name 
from employee 
join branch  
on employee.emp_id=branch.mgr_id;

select employee.emp_id, employee.first_name, branch.branch_name 
from employee 
left join branch  
on employee.emp_id=branch.mgr_id;

insert into branch values (4,'buffalo',NULL,NULL);

select employee.emp_id, employee.first_name, branch.branch_name 
from employee 
right join branch  
on employee.emp_id=branch.mgr_id;

