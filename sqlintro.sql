create database sql_into;
show databases;
create table emp_details (Name varchar(25), Age int, Sex char(1), doj date, city varchar(15), salary float);
describe emp_details;
Insert into emp_details
values ("Jimmy", 35, "M", "2005-05-30","chicago", 70000),
("Marry", 28, "F", "2009-03-10", "Boston", 55000), 
("Dwayne", 37, "M", "2011-07-12", "Austin", 57000),
("Sara", 32, "F", "2017-10-27", "New York", 72000),
("Ammy", 35, "F", "2014-12-02", "Seattle", 80000);
Select * from emp_details;
Select distinct city from emp_details;
select sum(salary) from emp_details;
select avg(salary) from emp_details;
select name, age, city from emp_details;
select * from emp_details where age > 30;
select name, sex, city from emp_details where sex="F";
select * from emp_details where 
city = "Chicago"  or city="Austin";
select * from emp_details where
city in ('chicago', 'Austin');
select * from emp_details where age>30 and sex='M';
select sex, sum(salary) as total_salary from emp_details group by sex;
select * from emp_details order by salary;
select (10+20) as addition;
select (10-20) as subract;
select length('India') as total_len;
select repeat('@', 10);
select upper('India');
select curdate();
select day(curdate());
select now();
select upper("India") as upper_case;
select lower("India")as lower_case;
select lcase("India") as lower_case;
select ucase("India") as upper_case;
select concat("India", " is", " in", " Asia"); 

create table students_detail(stu_id int, stu_name varchar(30));
describe students_detail;
insert into students_detail 
values (1, "melisa", 27),
(2, "donald", 67),
(3, "steve", 45);
select * from students_detail;
alter table students_detail add column adress  varchar(30);
describe students_detail;
update  students_detail set adress = "mexico" where  age = 27;
select reverse("India");
select reverse(stu_name) from students_detail;
select replace("Orange is a fruit", "vegetable", "fruit");
select ltrim("       India       ");
select length("       India       ");
select length(rtrim("       India       "));
select ascii('a');
select ascii('4');
create table employees1(EmpId int primary key, Emp_name varchar(30), Age int, gender char(1), Doj varchar(20), city varchar(15), salary int);
describe employees1;
insert into employees1 
values
(101, "adverd", 26, "M", "march", "seattle", 45000),
(105, "melisa", 24, "F", "june", "sydney", 50000),
(103, "maria", 27, "F", "july", "america", 75000);
select distinct city from employees1;
select avg(Age) as average_age from employees1;
Alter table employees1 add column dept varchar(20);
describe employees1;
update employees1 set dept ="developer" where  EmpId = 101;
describe employees1;
select * from employees1;
update employees1 set dept ="finance" where  EmpId = 103;
update employees1 set dept ="sales" where  EmpId = 105;
insert into employees1 
values
(102, "elly", 26, "F", "march", "seattle", 45000, "sales"),
(104, "steve", 24, "M", "june", "sydney", 50000, "finance"),
(106, "johnson", 27, "M", "july", "america", 75000, "developer");
select distinct city from employees1;
select dept, sum(salary) as total_salary from employees1
group by dept;
select count(EmpId), city from employees1
group by city
order by count(Empid) desc;
select doj as month, count(empid) from employees1
group by doj;
create table sales(product_id int, sell_price float, quantity int, state varchar(20));
insert into sales 
values(121, 320, 3, "california"),
(128, 400, 5, "Austria"),
(123, 600, 2, "Mauritius"),
(125, 480, 8, "newyork"); 
select * from sales;
select product_id, sum(sell_price*quantity) as revenue from sales 
group by product_id;
create table c_product(product_id int, cost_price float);
insert into c_product
values(121, 270),
(128, 300),
(123, 550),
(125, 400);
select c.product_id, sum((s.sell_price-c.cost_price)*quantity) as profit from sales as s 
inner join c_product as c
where s.product_id=c.product_id
group by c.product_id;
describe employees1;
select count(empId), city from employees1 
group by city
having count(empId)>1;
select dept, avg(salary)as avg_salary from employees1 
group by dept
having avg(salary)>7000;
select city, avg(salary) as avg_salary from employees1
group by city
having avg(salary)>50000;
select dept, count(*) as emp_count from employees1
group by dept
having count(*)>1;
select city, count(*) as emp_count from employees1
where city!="america"
group by city
having count(*)>1;
select dept, count(empId), salary from employees1
where salary>5000
group by city;
select dept, count(empId) from employees1
where salary>5000
group by city;
create table cricket(cricket_id int auto_increment, name varchar(30), primary key(cricket_id));
create table football(football_id  int auto_increment, name varchar(30), primary key(football_id));
insert into cricket
values (1, 'stuart'), 
(2, 'Michael'), 
(3, 'Johnson'),
 (4, 'Hyden'),
 (5, 'Fleming');
 select * from cricket;
 insert into football
 values(3, 'Hayden'),
 (4, 'Langer'),
 (5, 'Astle');
 select * from football;
 select * from cricket as c 
 inner join football as f on c.name=f.name;
 select c.cricket_id, c.name, f.football_id, f.name from cricket as c
 inner join football as f on c.name=f.name;
 create table Employees2(EmpId int, Emp_name varchar(30), Age int, Gender char(1), Doj date, City varchar(30), Salary int);
 insert into Employees2 
 values(223, "celine", 23, "F", 20/9/21, "malaysia", 45000);
 insert into Employees2 
 values(225, "mary", 24, "F", 24/9/21, "indonasia", 45000), 
 (226, "seniorita", 28, "F", 26/9/21, "mexico", 45000),
(227, "victoria", 24, "F", 29/9/21, "switzerland", 45000), 
(229, "paskin", 29, "F", 20/6/21, "thampa", 45000),
 (235, "jacob", 27, "M", 20/8/21, "effile", 45000),
 (201, "steve", 29, "M", 20/12/21, "america", 45000),
 (293, "elly", 24, "F", 20/8/21, "sydney", 45000);
 Alter table Employees2 add column Dept varchar(30);
update Employees2 set Dept="Marketing" where EmpId=223;
update Employees2 set Dept="Sales" where EmpId=225;
update Employees2 set Dept="Developer" where EmpId=226;
update Employees2 set Dept="software" where EmpId=227;
update Employees2 set Dept="hardware" where EmpId=235;
update Employees2 set Dept="Sales" where EmpId=201;
update Employees2 set Dept="Analyst" where EmpId=293;
update Employees2 set Dept="Analyst" where EmpId=229;
Select *  from Employees2;
Select Dept from Employees2
where Salary=(Select Max(salary) from Employees2);
create table products1(product_id int, Product_name varchar(30), sell_price float, product_type varchar(30));
insert into Products1 
values(101, 'Jewelery', 1800, 'Luxury'),
(102, 'T-Shirt', 100, 'Non_luxury'),
(103, 'Laptop', 1300, 'luxury'),
(104, 'Table', 400, 'Non_Luxury');
select * from products1;
create table orders1(order_id int, product_sold varchar(30), selling_price float);
insert into orders1
values(101, 'Jwellery', 18000),
(103, 'Laptop', 13000);
insert into orders1
select product_id, Product_name, sell_price
from Products1 where product_id in
(select product_id from Products1 where sell_price>1000);
select * from employees1;
update employees1
set salary=salary*0.35
where age>=26;
select * from employees1;
delete from employees1
where age=27;
select * from employees1;
#joins
#cross_join
create table faculty(Fid int, Fname varchar(20), Qualification varchar(20), Deptid int);
insert into faculty 
values(1, "Aman", "B.Tech", 1),
(2, "Mohan", "M.Tech", 1),
(3, "Vishal", "M.Tech", 1),
(4, "Priya", "Ph.D", 2),
(5, "Ravi", "Ph.d", 3),
(6, "Arati", "M.tech", 2);
create table department(deptid int, dname varchar(20));
insert into department
values(1 ,"IT"),
(2, "CSE"),
(3, "ECE");
select * from faculty;
select * from department;
select * from faculty cross join department;
#inner join
select f.Fname, d.dname  from faculty f inner join department d on f.deptid=d.deptid;
select f.Fname, d.dname  from faculty f inner join department d on f.deptid=d.deptid where d.deptid=2;
insert into faculty values(7, "Varun", "ICE", 5);
insert into department values(4,"EEE");
#inner join
select f.Fname, d.dname  from faculty f inner join department d on f.deptid=d.deptid;
#left join
select f.Fname, d.dname from faculty f left join department d on f.deptid=d.deptid;
#right join
select f.Fname, d.dname from faculty f right join department d on f.deptid=d.deptid;
#self join
create table emp(empid int, ename varchar(20), esuper int);
insert into emp 
values(1, "A", 2),
(2, "B", 3),
(3, "C", 4);
select e.ename as "Employee Name", s.ename as "Supervisor" from emp e, emp s where e.esuper=s.empid;
#Sub queries
create table Emp1(Ename varchar(20), deptid int);
insert into Emp1 
values("steve", 1),
("Maria", 2),
("lucy", 3),
("Gracy", 4);
create table Dept(Deptid int, dname varchar(20));
insert into Dept
values(1, "software"),
(2, "cosulting"),
(3, "sales"),
(4, "Hr");
#nested or sql subquery 
#select statement
select ename from emp1
where deptid in 
(select Deptid from Dept
where dname='Hr');
#insert subquery
create table manager(ename varchar(20), deptid int);
insert into manager 
values("joe", 5),
("marie", 6);
Insert into emp1
select  * from manager
where ename in(select ename from manager);
#update subquery
alter table emp1 add column salary int;
update emp1 set salary=20000 where deptid=1;
update emp1 set salary=30000 where deptid=2;
update emp1 set salary=35000 where deptid=3;
update emp1 set salary=40000 where deptid=4;
update Emp1
set salary=salary+10000
where deptid in
(select Deptid from dept
where dname="software");
select * from emp1;
#delete subquery
Delete from Emp1
where deptid in(select deptid from Dept where dname="sales");
select * from emp1;
#triggers 
create table students(stdId int, marks int);
create trigger sample_trigger
before insert
on students
for each row
set new.marks=new.marks+6;
insert into students values(1, 80),
(2, 60),
(3, 90);
create table customers2(cust_id int, age int, name varchar(20));
delimiter $$
create trigger age_verifying
before insert on customers2
for each row
begin
 if new.age<0 then set new.age=0;
end if;
end $$
insert into customers2 values(1, -1, "Adrew"),
(2, 26, "Neve"),
(3, -9, "Falus");
select * from customers2;
drop table customers3;
drop table messages;
create table customers3(id int primary key auto_increment, name varchar(20) not null, email varchar(30), birthdate date);
create table messages(id int auto_increment, messageid int, message varchar(300) not null, primary key(id, messageid));


drop trigger check_null_dob;
Delimiter $$
create trigger 
check_null_dob
after insert
on customers3
for each row
begin
if new.birthdate is null then
 insert into messages(messageid, message)
 values(new.id, concat('Hi', new.name, 'please update your date of birth'));
end if;
end $$

insert into customers3 values(1,"Nanacy", "Nanacy@abc.com", Null);
insert into customers3 values(2, "Ronald", "ronald@xyz.com", Null);
select * from messages;




drop table employees4;
create table employees4
(empId int primary key,
empName varchar(25),
age int,
salary float);
insert into employees4 values(101, "Shane", 35, 10000),
(102, "Marry", 30, 55000),
(103, "Dewyane", 28, 2000),
(104, "Ammy", 27, 57000);

Delimiter $$
create trigger upd_trigger
before update
on employees4
for each row
begin
 if new.salary=10000 then 
 set new.salary=85000;
 else if new.salary<10000 then
set new.salary=72000;
end if;
end if;
end $$


update employees4 
set salary=8000;

select * from employees4;

create table salary(eid int primary key, validfrom date not null, amount float not null);
insert into salary values(101, '2005-05-01', 55000),
(102, '2007-08-1', 68000),
(103, '2006-09-01', 75000);
select * from salary;

create table salarydel(id int primary key Auto_increment, eid int, validfrom date not null, amount float not null, datedat timestamp default now());

delimiter $$
create trigger salary_delete
before delete
on salary
for each row
begin
insert into salarydel(eid, validfrom, amount)
value(old.eid, old.validfrom, old.amount);
end$$

delete from salary
where eid=103;

select * from salarydel;

#stored procedure
create table players(player_id int, name varchar(20), country varchar(20), goals int);
insert into players values(1, "Joe", "america", 8),
(2, "Mark", "philipines", 9),
(3, "alus", "australia", 3);

delimiter &&
create procedure top_players()
begin 
select name, country, goals
from players where goals>6;
end &&

call top_players();

#SP using in parameter
create table emp1_details(name varchar(20), age int, salary int);
insert into emp1_details values("Jimmy", 35, 70000),
("Ammy", 35, 80000),
("Sara", 32, 720000);

delimiter &&
create procedure SP_SortBySalary(IN var int)
begin
select name, age, salary from emp1_details
order by salary desc limit var;
end &&

call SP_SortBySalary(2)

delimiter &&
create procedure update_salary(IN temp_name varchar(20), new_salary float)
begin
update emp1_details set
salary=new_salary where name=temp_name;
end &&

call update_salary("Jimmy", 85000);

#stored procedure using out parameter
alter table emp1_details drop column sex; 
alter table emp1_details add column sex char(1);
update emp1_details set sex="F" where name="Sara";
update emp1_details set sex="F" where name="Ammy";
update emp1_details set sex="M" where name="Jimmy";
select * from emp1_details;

Delimiter &&
create procedure SP_countEmployees(OUT Total_Employees_F int)
begin
select count(name) into Total_Employees_F from emp1_details
where sex="F";
end &&

call SP_countEmployees(@F_emp);
select @F_emp as female_emps;




