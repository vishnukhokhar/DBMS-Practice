create table empas( 
empno int primary key, 
ename varchar(20) unique, 
job varchar(20), 
sal int not null, 
deptno int, 
constraint chck_job check(job='prof' or job='ap' or job='lect');

create table empas( 
empno int primary key, 
ename varchar(20) unique, 
job varchar(20), 
sal int not null, 
deptno int, 
constraint chck_job check(job='prof' or job='ap' or job='lect'));

desc empas


create table dept( 
deptno int primary key, 
dname varchar(20), 
constraint chck_dname check(dname='acc' or dname='comp' or dname='elect') 
);

create table s( 
sno int primary key, 
sname varchar(20), 
city varchar(20) 
);

create table p( 
pno int primary key, 
pname varchar(20), 
color varchar(20) 
);

create table j( 
jno int primary key, 
jname varchar(20), 
city varchar(20) 
);

create table spj( 
sno int primary key, 
pno int primary key, 
jno int primary key, 
constraint for_sno foreign key sno references s(sno)  
on delete set null, 
constraint for_jno foreign key jno references j(jno) 
on delete set null, 
constraint for_pno foreign key pno references p(pno) 
on delete set null,;

create table spj( 
sno int, 
pno int,  
jno int, 
primary key(sno,jno, pno), 
constraint for_sno foreign key sno references s(sno)  
on delete set null, 
constraint for_jno foreign key jno references j(jno) 
on delete set null, 
constraint for_pno foreign key pno references p(pno) 
on delete set null);

create table spj( 
sno int, 
pno int,  
jno int, 
primary key(sno,jno, pno), 
constraint for_sno foreign key sno references s(sno)  
on delete set null, 
constraint for_jno foreign key jno references j(jno) 
on delete set null, 
constraint for_pno foreign key pno references p(pno) 
on delete set null 
);

create table spj( 
sno int, 
pno int,  
jno int, 
primary key(sno,jno, pno), 
constraint (for_sno) foreign key sno references s(sno)  
on delete set null, 
constraint (for_jno) foreign key jno references j(jno) 
on delete set null, 
constraint (for_pno) foreign key pno references p(pno) 
on delete set null 
);

create table spj( 
sno int, 
pno int,  
jno int, 
primary key(sno,jno, pno), 
constraint (for_sno) foreign key sno references s(sno)  
on delete set null, 
constraint (for_jno) foreign key jno references j(jno) 
on delete set null, 
constraint (for_pno) foreign key pno references p(pno) 
on delete set null 
);

desc p


create table spj( 
sno int, 
pno int,  
jno int, 
primary key(sno,jno, pno), 
constraint (for_sno) foreign key sno references s(sno)  
on delete set null, 
constraint (for_jno) foreign key jno references j(jno) 
on delete set null, 
constraint (for_pno) foreign key pno references p(pno) 
on delete set null 
);

create table spj( 
sno int, 
pno int,  
jno int, 
-- primary key(sno,jno, pno), 
constraint (for_sno) foreign key sno references s(sno)  
on delete set null, 
constraint (for_jno) foreign key jno references j(jno) 
on delete set null, 
constraint (for_pno) foreign key pno references p(pno) 
on delete set null 
);

create table spj( 
sno int, 
pno int,  
jno int, 
primary key(sno,jno, pno), 
-- constraint (for_sno) foreign key sno references s(sno)  
-- on delete set null, 
constraint (for_jno) foreign key jno references j(jno) 
on delete set null, 
constraint (for_pno) foreign key pno references p(pno) 
on delete set null 
);

create table spj( 
sno int, 
pno int,  
jno int, 
primary key(sno,jno, pno), 
constraint (for_sno) foreign key sno references s(sno) on delete set null, 
constraint (for_jno) foreign key jno references j(jno) 
on delete set null, 
constraint (for_pno) foreign key pno references p(pno) 
on delete set null 
);

create table spj( 
sno int, 
pno int,  
jno int, 
primary key(sno,jno, pno), 
constraint (for_sno) foreign key sno references s(sno) on delete set null, 
constraint (for_jno) foreign key jno references j(jno) on delete set null, 
constraint (for_pno) foreign key pno references p(pno) on delete set null 
);

create table spj( 
sno int, 
pno int,  
jno int, 
primary key(sno,jno, pno), 
-- constraint (for_sno) foreign key sno references s(sno) on delete set null, 
-- constraint (for_jno) foreign key jno references j(jno) on delete set null, 
-- constraint (for_pno) foreign key pno references p(pno) on delete set null 
);

create table spj( 
sno int, 
pno int,  
jno int, 
primary key(sno,jno, pno), 
constraint (for_sno) foreign key sno references s(sno) , 
constraint (for_jno) foreign key jno references j(jno) , 
constraint (for_pno) foreign key pno references p(pno)  
);

create table spj( 
sno int, 
pno int,  
jno int, 
-- primary key(sno,jno, pno), 
constraint (for_sno) foreign key sno references s(sno) , 
constraint (for_jno) foreign key jno references j(jno) , 
constraint (for_pno) foreign key pno references p(pno)  
);

create table spj( 
sno int, 
pno int,  
jno int, 
primary key(sno,jno, pno), 
 
);

create table spj( 
sno int, 
pno int,  
jno int, 
-- primary key(sno,jno, pno), 
);

create table spj( 
sno int, 
pno int, 
jno int,  
primary key(sno,pno,jno) 
);

delete spj;

delete table spj;

desc spj


alter table spj( 
add constraint fk_sno  
foreign key (sno)  
references s(sno) 
);

alter  spj( 
add constraint fk_sno  
foreign key (sno)  
references s(sno) 
);

alter table spj 
add constraint fk_sno  
foreign key (sno)  
references s(sno) ;

alter table spj 
add constraint fk_pno 
foreign key (pno) 
references p(pno);

alter table spj 
add constraint fk_jno 
foreign key (jno) 
references j(jno);

desc emp


desc empas


INSERT INTO empas VALUES(102003199, 'Vishnu', 'prof',205000,120);

INSERT INTO empas VALUES(102003200, 'PRATEEK', 'AP',175000,123);

INSERT INTO empas VALUES(102003201, 'DEEVANG', 'LECT',150000,122);

INSERT INTO empas VALUES(102003202, 'YUVRAJ', 'LECT',200000,111);

INSERT INTO empas VALUES(102003198, 'HRIDAY', 'STUDENT',0,121);

INSERT INTO DEPT VALUES(122,'ELEC');

INSERT INTO DEPT VALUES(123,'COMP');

INSERT INTO DEPT VALUES(111,'ACC');

INSERT INTO DEPT VALUES(122,'ELECT');

INSERT INTO empas VALUES(102003199, 'Vishnu', 'prof',205000,120);

INSERT INTO empas VALUES(102003200, 'PRATEEK', 'AP',175000,123);

INSERT INTO empas VALUES(102003201, 'DEEVANG', 'LECT',150000,122);

INSERT INTO empas VALUES(102003202, 'YUVRAJ', 'LECT',200000,111);

INSERT INTO empas VALUES(102003198, 'HRIDAY', 'STUDENT',0,121);

INSERT INTO empas VALUES(102003199, 'Vishnu', 'prof',205000,120);

INSERT INTO empas VALUES(102003200, 'PRATEEK', 'AP',175000,123);

INSERT INTO empas VALUES(102003201, 'DEEVANG', 'LECT',150000,122);

INSERT INTO empas VALUES(102003202, 'YUVRAJ', 'LECT',200000,111);

INSERT INTO empas VALUES(102003198, 'HRIDAY', 'lect',0,121);

INSERT INTO empas VALUES(102003199, 'Vishnu', 'prof',205000,120);

INSERT INTO empas VALUES(102003200, 'PRATEEK', 'AP',175000,123);

INSERT INTO empas VALUES(102003201, 'DEEVANG', 'LECT',150000,122);

INSERT INTO empas VALUES(102003202, 'YUVRAJ', 'LECT',200000,111);

INSERT INTO empas VALUES(102003198, 'HRIDAY', 'lect',0,121);

INSERT INTO empas VALUES(102003200, 'PRATEEK', 'AP',175000,123);

INSERT INTO empas VALUES(102003201, 'DEEVANG', 'LECT',150000,122);

INSERT INTO empas VALUES(102003202, 'YUVRAJ', 'LECT',200000,111);

INSERT INTO empas VALUES(102003198, 'HRIDAY', 'lect',0,121);

select * from empas;

INSERT INTO empas VALUES(102003200, 'PRATEEK', 'AP',175000,123);

INSERT INTO empas VALUES(102003201, 'DEEVANG', 'LECT',150000,122);

INSERT INTO empas VALUES(102003202, 'YUVRAJ', 'LECT',200000,111);

INSERT INTO empas VALUES(102003200, 'PRATEEK', 'AP',175000,123);

INSERT INTO empas VALUES(102003201, 'DEEVANG', 'LECT',150000,122);

INSERT INTO empas VALUES(102003202, 'YUVRAJ', 'LECT',200000,111);

INSERT INTO empas VALUES(102003200, 'PRATEEK', 'ap',175000,123);

INSERT INTO empas VALUES(102003201, 'DEEVANG', 'lect',150000,122);

INSERT INTO empas VALUES(102003202, 'YUVRAJ', 'lect',200000,111);

INSERT INTO DEPT VALUES(122,'elect');

INSERT INTO DEPT VALUES(123,'comp');

INSERT INTO DEPT VALUES(111,'acc');

INSERT INTO DEPT VALUES(122,'elect');

INSERT INTO DEPT VALUES(122,'elect');

select * from dept 
;

select * from empas;

INSERT INTO DEPT VALUES(122,'elect');

select * from dept;

INSERT INTO DEPT VALUES(124,'elect');

INSERT INTO S VALUES(2,'HARMAN','PATIALA');

INSERT INTO S VALUES(3,'NRIP','SANGRUR');

INSERT INTO S VALUES(4,'VANEET','MANSA');

INSERT INTO P VALUES(111,'NUT','GREY');

INSERT INTO P VALUES(222,'BOLT','BLACK');

INSERT INTO P VALUES(333,'SCREW DRIVER','RED');

INSERT INTO P VALUES(444,'HAMMER','BROWN');

INSERT INTO J VALUES(11,'HALLA BOL', 'AMRITSAR');

INSERT INTO J VALUES(22,'PROJECT', 'PATIALA');

INSERT INTO J VALUES(33,'FIRST ', 'CHANDIGARH');

INSERT INTO J VALUES(44,'HELLO PROJECT', 'LUDHIANA');

INSERT INTO SPJ VALUES(1, 111, 11, 1000);

INSERT INTO SPJ VALUES(2, 222, 22, 1500);

INSERT INTO SPJ VALUES(3, 333, 33, 700);

INSERT INTO SPJ VALUES(4, 444, 44, 2000);

INSERT INTO SPJ VALUES(1, 111, 11, 1000);

INSERT INTO SPJ VALUES(2, 222, 22, 1500);

INSERT INTO SPJ VALUES(3, 333, 33, 700);

INSERT INTO SPJ VALUES(4, 444, 44, 2000);

select * from j;

INSERT INTO SPJ VALUES(1, 111, 11, 1000);

INSERT INTO SPJ VALUES(2, 222, 22, 1500);

INSERT INTO SPJ VALUES(3, 333, 33, 700);

INSERT INTO SPJ VALUES(4, 444, 44, 2000);

INSERT INTO SPJ VALUES(2, 222, 22, 1500);

INSERT INTO SPJ VALUES(3, 333, 33, 700);

INSERT INTO SPJ VALUES(4, 444, 44, 2000);

desc spj


INSERT INTO SPJ VALUES(2, 222, 22, 1500);

INSERT INTO SPJ VALUES(3, 333, 33, 700);

INSERT INTO SPJ VALUES(4, 444, 44, 2000);

desc spj


alter table spj 
add qty int ;

INSERT INTO SPJ VALUES(2, 222, 22, 1500);

INSERT INTO SPJ VALUES(3, 333, 33, 700);

INSERT INTO SPJ VALUES(4, 444, 44, 2000);

desc s 


desc p 


desc j 


desc spj


select * from user_constraint  
where table_name='spj';

select * from user_constraint  
where table_name='spj';

select constraint from user_constraint  
where table_name='spj';

select constraint from user_constraint  
where table_name='empas';

select constraint from user_constraint s 
where table_name='empas 
 
;

select constraint from user_constraint s 
where table_name='empas' 
 
;

select constraint from user_constraint s 
where table_name='spj' 
 
;

select constraint from user_constraints 
where table_name='spj' 
 
;

select * from user_constraints 
where table_name='spj' 
 
;

desc spj


select * from user_constraints 
where table_name='spj' 
 
;

select * from user_constraints 
where table_name='empas' 
 
;

alter table empas 
drop unique;

alter table empas 
drop unique (ename);

alter table dept 
drop foreign key(deptno);

alter table dept 
drop constraint fk_deptno;

alter table dept 
drop foreign key (deptno);

desc dept


alter table dept 
add constraint fk_deptno 
foreign key (deptno) 
references dept(deptno);

alter table dept 
drop constraint fk_deptno;

alter table dept 
drop constraint fk_deptno;

alter table dept 
add constraint fk_deptno 
foreign key (deptno) 
references dept(deptno) 
;

alter table empas 
modify ename char(50);

alter table d 
modify dname varchar(50);

alter table dept 
modify dname varchar(50);

alter table empas 
add comm int;

alter table j  
drop city;

alter table j  
drop column city;

create table dup_empas as ( 
select * from empas);

create table dup_dept(dept_no, dept_name) as (select * from dept);

alter table empas 
set ename='shady' and job='acc' 
where emno='102003199';

update empas 
set ename='shady' and job='acc' 
where emno='102003199';

update empas 
set ename='shady' and job='acc' 
where empno='102003199';

update empas 
set ename='shady', job='acc' 
where empno='102003199';

desc empas


select * from user_constraint  
where table_name='empas' 
;

select constraints from user_constraint  
where table_name='empas' 
;

update empas 
set name='shady', job='acc' 
where empno='102003199';

update empas 
set ename='shady', job='acc' 
where empno='102003199';

update empas 
set ename='shady', job='ap' 
where empno='102003199';

select * from dept;

delete from dept  
where deptno='123';

select * from dept 
;

drop table dept


drop table dup_empas


