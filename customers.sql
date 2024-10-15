SELECT * FROM xworkz_tasks.customers;

select * from customers where FirstName like 'A%';
select * from customers where FirstName like '%A';

select * from customers where FirstName not like "A%" order by FirstName desc;
#count :
select count(*) from customers where FirstName not like "A%" order by FirstName desc;

#distinct:
select distinct (customerid),(email) from customers;

select  * from  customers;

update customers set email= 'alice.williams@example.com' where customerid= 2;


#order by:
select * from customers order by city desc;
select email from customers order by email desc;

select * from products;

#aggregate functions:
#AVG
select avg(price) from products;

#SUM
select sum(price) as product_price from products;

#Count:
select count(*) from products;

#min:
select productname,  price as p_price from products where price= (select min(price) from products) ;

#max:
select productname,  price as p_price from products where price= (select max(price) from products) ;





