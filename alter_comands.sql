
/* SQL TASKS */

ADD 4 COLUMNS TO EXISTING TABLE.
REMOVE 2 COLUMNS
RENAME 3 COLUMNS
CHANGE DATATYPE FOR 3 COLUMNS.
RENAME TABLE NAME.

/* Creating  database */

CREATE DATABASE xworkz_tasks;

USE xworkz_tasks;

SELECT * FROM book;

CREATE TABLE book ( id int , b_name varchar(30));

/* ADDING 4 COLUMNS TO EXISTING TABLE */

ALTER TABLE book ADD COLUMN publisher varchar(30) ,ADD COLUMN sale_count int ;

/* REMOVE 2 COLUMNS */

ALTER TABLE book DROP COLUMN publisher, DROP COLUMN sale_count;

/* RENAME 2 COLUMNS */

ALTER TABLE book RENAME COLUMN b_name TO book_name,RENAME COLUMN book_author TO author,RENAME COLUMN sale_count TO total_sales;

/* CHANGE DATATYPE FOR 3 COLUMNS.*/

ALTER TABLE book MODIFY COLUMN book_price bigint, MODIFY COLUMN publisher varchar(40),MODIFY COLUMN total_sales bigint;

/* RENAME TABLES */
RENAME TABLE book TO book_info;