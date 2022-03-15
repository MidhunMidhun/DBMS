create database company;
show databases;
use company;
create table jobs(job_id int,job_title varchar(30),min_salary int,max_salary int,
primary key(job_id));
create table regions(region_id int,region_name varchar(30),primary key(region_id));
create table countries(country_id int,country_name varchar(30),region_id int, 
primary key(country_id),foreign key(region_id) references regions(region_id));
create table locations(location_id int,street_address varchar(30),postal_code int,
city varchar(30),state_province varchar(30),country_id int ,primary key(location_id),
foreign key(country_id) references countries(country_id));
create table departments(department_id int,department_name varchar(30),location_id int,
primary key(department_id),foreign key(location_id) references locations(location_id));
create table employees(employee_id int,first_name varchar(30),last_name varchar(30),
email varchar(50),phone_number varchar(30),hire_date date,job_id int,salary int,
manager_id int,department_id int,primary key(employee_id),
foreign key(job_id) references jobs(job_id),foreign key(department_id)
 references departments(department_id),foreign key(manager_id) 
 references employees(employee_id));
 drop database company;
 create table dependents(dependent_id int,first_name varchar(30),last_name varchar(30),
 relationship varchar(30),employee_id int,primary key(dependent_id),
 foreign key(employee_id) references employees(employee_id));