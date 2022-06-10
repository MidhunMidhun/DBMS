create database new;
use new;
create table product (p_id int primary key,name varchar(30),price varchar(20),quantity_in_stock varchar(30));
create table sale(s_id int primary key,delivery_address varchar(30));
create table saleitem(p_id int,s_id int,quantity varchar(20),
foreign key (p_id) references product(p_id),foreign key (s_id) references sale(s_id));
insert into product values(01,"shirts",699,10);
insert into product values(02,"jeans",999,9);
insert into product values(03,"Tees",599,15);
insert into product values(04,"shoes",899,8);
select * from product;
insert into sale values(11,"abc");
insert into sale values(12,"xyz");
insert into sale values(13,"pqr");
insert into saleitem values(01,11,3);
select * from product;
