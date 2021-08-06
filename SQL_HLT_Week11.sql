Create database happy_club;

Create table customer
(
customer_id INT not null AUTO_INCREMENT,
first_name varchar(250) not null,
last_name varchar(250) not null,
customer_address varchar(250) not null,
phone varchar(250) not null,
 PRIMARY KEY(customer_id));

alter table customer AUTO_INCREMENT=1001;

#CREATING TABLE ORDERS
Create table orders(
order_id int auto_increment ,
customer_id int not null,
purchased_date datetime,
quantity int not null,
total int not null,
primary key(order_id),
FOREIGN KEY (customer_id) REFERENCES customer(customer_id));


Insert into customer (first_name,last_name,customer_address,phone) values ('Lewis','Richard','Glasgow',07654322141);
Insert into customer (first_name,last_name,customer_address,phone) values ('smith','Jack','Maidstone',07123456781);
Insert into customer (first_name,last_name,customer_address,phone) values ('harry','Kane','London',07653427862);
Insert into customer (first_name,last_name,customer_address,phone) values ('Francy','Rao','Leicester',075456789089);
Insert into customer(first_name,last_name,customer_address,phone) values ('anisha','kaur','Manchester',07654321234);
Insert into customer(first_name,last_name,customer_address,phone) values ('Jessica','Oliver','Bristol',07654345665);
insert into customer(first_name,last_name,customer_address,phone) values('Sami','Aryal','southampton',07648275342);

Insert into orders values('1',3,'2020-12-23', '4', '20');
(2,3,'2021-01-09', 5, 30);
(3,6,'2020-09-13', 1, 10);
(4,4,'2020-12-23', 5, 40);
(5,4,'2021-04-02',3, 20);
(6,5'2021-03-27',5, 60);
(7,5,'2021-01-17',  12, 10),
(8,1,'2021-02-24', 5, 200),
(9,1,'2020-08-25',7, 50),
(10,4,'2020-11-01', 8, 70);

#Display table
select * from customer;
select * from orders;

#Displaying first name from list
select first_name from customer;

#Delete record
delete from customer where customer_id='2';

#comparision operator
select * from customer where customer_id <= 4;

#joining two table
SELECT *
FROM customer
INNER JOIN orders
ON customer.customer_id = 
orders.customer_id;

#Running a simple query
select first_name, last_name from customer order by customer_id;

#Running a complex query demonstrate the relations between the 2 tables.
SELECT order_id, first_name, total
FROM customer
left JOIN orders
ON  customer.customer_id = 
orders.customer_id
order by total desc;

#dropping tables
drop table customer;
drop table orders;
