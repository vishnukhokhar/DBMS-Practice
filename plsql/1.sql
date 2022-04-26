create table data( 
D_name varchar(30), 
phone_number int, 
city varchar(20) 
);

create table data1( 
D_name varchar(30), 
phone_number int, 
city varchar(20) 
);

drop table data1


create table data1( 
D_name varchar(30) not null, 
phone_number int primary key, 
city varchar(20) not null 
);

insert into data1 values('rahul',9999966666,'patiala') 
insert into data1 values('raman',9999955555,'Chandigarh');

insert into data1 values('rahul',9999966666,'patiala') 
insert into data1 values('raman',9999955555,'Chandigarh');

insert into data1 values('rahul',9999966666,'patiala');

insert into data1 values('raman',9999955555,'Chandigarh');

select * from data1;

declare 
n varchar(30); 
c varchar(20); 
begin 
select d_name, city into n,c from data1 where city='patiala'; 
dbms.output.put_line('hello customer'); 
dbms.output.put_line('Name is' || n); 
dbms.output.put_line('city is' || c); 
 
end; 

/

declare 
n varchar(30); 
c varchar(20); 
begin 
select D_name, city into n,c from data1 where city='patiala'; 
dbms.output.put_line('hello customer'); 
dbms.output.put_line('Name is' || n); 
dbms.output.put_line('city is' || c); 
 
end; 

/

declare 
n varchar(30); 
c varchar(20); 
begin 
select D_name, city into n,c from data1 where city='patiala'; 
dbms_output.put_line('hello customer'); 
dbms_output.put_line('Name is' || n); 
dbms_output.put_line('city is' || c); 
 
end; 

/

declare 
n varchar(30); 
c varchar(20); 
begin 
select D_name, city into n,c from data1 where city='patiala'; 
dbms_output.put_line('hello customer'); 
dbms_output.put_line('Name is ' || n); 
dbms_output.put_line('city is ' || c); 
 
end; 

/

declare 
n data1.D_name%type; 
c data1_city%type; 
begin 
select D_name, city into n,c from data1 where city='patiala'; 
dbms_output.put_line('hello customer'); 
dbms_output.put_line('Name is ' || n); 
dbms_output.put_line('city is ' || c); 
 
end; 

/

declare 
n data1.D_name%type; 
c data1.city%type; 
begin 
select D_name, city into n,c from data1 where city='patiala'; 
dbms_output.put_line('hello customer'); 
dbms_output.put_line('Name is ' || n); 
dbms_output.put_line('city is ' || c); 
 
end; 

/

alter table data1 modify (data1(D_name varchar(300));

declare 
n data1.D_name%type; 
c data1.city%type; 
begin 
select D_name, city into n,c from data1 where city='patiala'; 
dbms_output.put_line('hello customer'); 
dbms_output.put_line('Name is ' || n); 
dbms_output.put_line('city is ' || c); 
 
end; 

/

alter table data1 modify D_name varchar(300);

declare 
n data1.D_name%type; 
c data1.city%type; 
begin 
select D_name, city into n,c from data1 where city='patiala'; 
dbms_output.put_line('hello customer'); 
dbms_output.put_line('Name is ' || n); 
dbms_output.put_line('city is ' || c); 
 
end; 

/

declare 
rec data1%rowtype; 
begin 
select * into rec from data1 where city='patiala'; 
dbms_output.put_line('hello customer'); 
dbms_output.put_line('Name is ' || rec.D_name); 
dbms_output.put_line('phone number is ' || rec.phone_number); 
dbms_output.put_line('city is ' || rec.city); 
 
end; 

/

declare 
rec data1%rowtype;   -- sab kuch print krwane ke liye 
begin 
select * into rec from data1 where city='patiala'; 
dbms_output.put_line('hello customer'); 
dbms_output.put_line('Name is ' || rec.D_name); 
dbms_output.put_line('phone number is ' || rec.phone_number); 
dbms_output.put_line('city is ' || rec.city); 
 
end; 

/

declare 
a number := 3; 
b number :=5; 
c number; 
x number; 
 
begin  
x=2; 
if x=1 then 
c=a+b; 
elsif x=2 then  
c=a-b; 
elsif x=3 then 
c=a*b; 
elsif x=4 then  
c=a/b; 
else 
dbms_ouput.put_line('Not a valid option'); 
end if; 
end; 

/

declare 
a number := 3; 
b number :=5; 
c number; 
x number; 
 
begin  
x=2; 
if x=1 then 
c:=a+b; 
elsif x=2 then  
c:=a-b; 
elsif x=3 then 
c:=a*b; 
elsif x=4 then  
c:=a/b; 
else 
dbms_ouput.put_line('Not a valid option'); 
end if; 
end; 

/

declare 
a number := 3; 
b number :=5; 
c number; 
x number; 
 
begin  
x=2; 
if x=1 then 
c:=a+b; 
elsif x=2 then  
c:=a-b; 
elsif x=3 then 
c:=a*b; 
elsif x=4 then  
c:=a/b; 
else 
dbms_ouput.put_line('Not a valid option'); 
end if; 
end; 

/

declare 
a number := 3; 
b number :=5; 
c number; 
x number; 
 
begin  
x=2; 
if x=1 then 
c:=a+b; 
elsif x=2 then  
c:=a-b; 
elsif x=3 then 
c:=a*b; 
elsif x=4 then  
c:=a/b; 
else 
dbms_ouput.put_line('Not a valid option'); 
end if; 
dbms_output.put_line('Result is ' ||c); 
end; 

/

declare 
a number := 3; 
b number :=5; 
c number; 
x number; 
 
begin  
x:=2; 
if x=1 then 
c:=a+b; 
elsif x=2 then  
c:=a-b; 
elsif x=3 then 
c:=a*b; 
elsif x=4 then  
c:=a/b; 
else 
dbms_ouput.put_line('Not a valid option'); 
end if; 
dbms_output.put_line('Result is ' ||c); 
end; 

/

declare 
a number := 3; 
b number :=5; 
c number; 
x number; 
 
begin  
x:=2; 
if x=1 then 
c:=a+b; 
elsif x=2 then  
c:=a-b; 
elsif x=3 then 
c:=a*b; 
elsif x=4 then  
c:=a/b; 
else 
dbms_ouput.put_line('Not a valid option'); 
end if; 
dbms_output.put_line('Result is ' ||c); 
end; 

/

declare 
a number := 3; 
b number :=5; 
c number; 
x number; 
 
begin  
x:=2; 
if x=1 then 
c:=a+b; 
elsif x=2 then  
c:=a-b; 
elsif x=3 then 
c:=a*b; 
elsif x=4 then  
c:=a/b; 
else 
dbms_output.put_line('Not a valid option'); 
end if; 
dbms_output.put_line('Result is ' ||c); 
end; 

/

declare 
a number := 3; 
b number :=5; 
c number; 
x number; 
 
begin  
x:=5; 
if x=1 then 
c:=a+b; 
elsif x=2 then  
c:=a-b; 
elsif x=3 then 
c:=a*b; 
elsif x=4 then  
c:=a/b; 
else 
dbms_output.put_line('Not a valid option'); 
end if; 
dbms_output.put_line('Result is ' ||c); 
end; 

/

declare 
a number := 3; 
b number :=5; 
c number; 
x number; 
 
begin  
x:=5; 
if x=1 then 
c:=a+b; 
elsif x=2 then  
c:=a-b; 
elsif x=3 then 
c:=a*b; 
elsif x=4 then  
c:=a/b; 
else 
dbms_output.put_line('Not a valid option'); 
exit; 
end if; 
dbms_output.put_line('Result is ' ||c); 
end; 

/

declare 
a number := 3; 
b number :=5; 
c number; 
x number; 
 
begin  
x:=5; 
if x=1 then 
c:=a+b; 
elsif x=2 then  
c:=a-b; 
elsif x=3 then 
c:=a*b; 
elsif x=4 then  
c:=a/b; 
else 
dbms_output.put_line('Not a valid option'); 
 
end if; 
dbms_output.put_line('Result is ' ||c); 
end; 

/

declare  
a number:=5; 
b number:=15; 
 
begin 
loop  
dbms_output.put_line(a); 
a=a+3; 
exit when a>b; 
end loop ; 
end; 

/

declare  
a number:=5; 
b number:=15; 
 
begin 
loop  
dbms_output.put_line(a); 
a:=a+3; 
exit when a>b; 
end loop ; 
end; 

/

declare  
a number:=5; 
b number:=1; 
result number; 
begin 
whiile b<11 loop  
result:=a*b 
dbms_output.put_line(result); 
end loop ; 
end; 

/

declare  
a number:=5; 
b number:=1; 
result number; 
begin 
whiile b<11 loop  
result:=a*b 
dbms_output.put_line(a|| *||b||'='||result); 
b=b+1; 
end loop ; 
end; 

/

declare  
a number:=5; 
b number:=1; 
result number; 
begin 
whiile b<11 loop  
result:=a*b 
dbms_output.put_line(a||'*'||b||'='||result); 
b=b+1; 
end loop ; 
end; 

/

declare  
a number:=5; 
b number:=1; 
result number; 
begin 
while b<11 loop  
result:=a*b 
dbms_output.put_line(a||'*'||b||'='||result); 
b=b+1; 
end loop ; 
end; 

/

declare  
a number:=5; 
b number:=1; 
result number; 
begin 
while b<11 loop  
result:=a*b 
dbms_output.put_line(a||'*'||b||'='||result); 
b:=b+1; 
end loop ; 
end; 

/

declare  
a number:=5; 
b number:=1; 
result number; 
begin 
while b<11 loop  
result:=a*b; 
dbms_output.put_line(a||'*'||b||'='||result); 
b:=b+1; 
end loop ; 
end; 

/

declare  
a number:=5; 
result number; 
begin 
for b in 1..10 loop 
result:=a*b; 
dbms_output.put_line(a||'*'||b||'='||result); 
end loop ; 
end; 

/

declare  
a number:=7; 
result number; 
begin 
for b in 1..10 loop 
result:=a*b; 
dbms_output.put_line(a||'*'||b||'='||result); 
end loop ; 
end; 

/

declare  
a number:=7; 
b number:=5; 
c number; 
result number; 
begin 
c:=2 
if c=1 then 
result:=a*b; 
elsif c=2 then 
result:=a/b; 
else  
dbms_output.put_line('not a valid option'); 
end if 
dbms_output.put_line(result); 
end loop ; 
end; 

/

declare  
a number:=7; 
b number:=5; 
c number; 
result number; 
begin 
c:=2; 
if c=1 then 
result:=a*b; 
elsif c=2 then 
result:=a/b; 
else  
dbms_output.put_line('not a valid option'); 
end if 
dbms_output.put_line(result); 
end loop ; 
end; 

/

declare  
a number:=7; 
b number:=5; 
c number; 
result number; 
begin 
c:=2; 
if c=1 then 
result:=a*b; 
elsif c=2 then 
result:=a/b; 
else  
dbms_output.put_line('not a valid option'); 
end if; 
dbms_output.put_line(result); 
end loop ; 
end; 

/

declare  
a number:=7; 
b number:=5; 
c number; 
result number; 
begin 
c:=2; 
if c=1 then 
result:=a*b; 
elsif c=2 then 
result:=a/b; 
else  
dbms_output.put_line('not a valid option'); 
end if; 
dbms_output.put_line(result); 
end; 

/

declare  
a number:=7; 
b number:=5; 
c number; 
result number; 
begin 
c:=21; 
if c=1 then 
result:=a*b; 
elsif c=2 then 
result:=a/b; 
else  
dbms_output.put_line('not a valid option'); 
end if; 
dbms_output.put_line(result); 
end; 

/

declare  
a number:=7; 
b number:=5; 
c number; 
result number; 
begin 
c:=21; 
if c=1 then 
result:=a*b; 
elsif c=2 then 
result:=a/b; 
else  
dbms_output.put_line('not a valid option'); 
end if; 
dbms_output.put_line('result is' ||result); 
end; 

/

declare  
a number:=7; 
b number:=5; 
c number; 
result number; 
begin 
c:=21; 
if c=1 then 
result:=a*b; 
elsif c=2 then 
result:=a/b; 
else  
dbms_output.put_line('not a valid option'); 
goto skip; 
end if; 
dbms_output.put_line('result is' ||result); 
<<skip>> 
end; 

/

declare  
a number:=7; 
b number:=5; 
c number; 
result number; 
begin 
c:=21; 
if c=1 then 
result:=a*b; 
elsif c=2 then 
result:=a/b; 
else  
dbms_output.put_line('not a valid option'); 
goto skip; 
end if; 
dbms_output.put_line('result is' ||result); 
<<skip>> 
null; 
end; 

/

