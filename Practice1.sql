show databases;

use testDB;

show tables;

select * from Persons;

INSERT INTO Persons (PersonID, LastName, FirstName, Address, City)
VALUES (6, 'Mukesh', 'Otwani', '123 Maple St', 'Lakeside');

INSERT INTO Persons (PersonID, LastName, FirstName, Address, City)
VALUES 
(2, 'Johnson', 'Jane', '456 Oak St', 'Riverdale'),
(3, 'Williams', 'Mary', '789 Pine St', 'Mapleton'),
(4, 'Brown', 'James', '101 Birch St', 'Lakeside'),
(5, 'Jones', 'Patricia', '202 Cedar St', 'Hillside');

select * from persons;

drop table person;

select FirstName from persons;
select FirstName,LastName from persons;

select distinct city from persons;

select city from persons;
select count(city) from persons;

select count(distinct city) from persons;

select * from persons where address="whitefield";

select * from persons where personid=100;

select * from persons where personid<=100;

select * from persons;

select * from persons order by PersonID DESC;

select * from persons order by FirstName;

select * from persons order by FirstName DESC;

select * from persons order by FirstName, LastName;

select * from persons where personid=1 and lastname like "S%";

select * from persons where personid=1 or lastname like "S%";

select * from persons where personid=1 or lastname like "S%";

select * from persons where city="lakeside" and  ( firstname like "J%" or firstname like "M%");

select * from persons;

select * from persons where city="lakeside" or city="bangalore";

select * from persons where not city="Bangalore";

select * from persons where city not like "H%";

select * from persons where personid between 1 and 5;

select * from persons where personid not between 1 and 5;

select * from persons;

desc persons;

insert into persons (PersonID) values (200);

insert into persons (PersonID) values ("200");

select * from persons where lastname is null;

select * from persons where lastname is not null;

update persons set LastName="Otwani" where personid=200;

update persons set Firstname="Mukesh" where lastname="Otwani";

delete from persons where address is null;



create table sample(name varchar(4));

desc sample;

insert into sample (name) values ("nam");

select * from sample;

-- delete table content
delete from sample;

-- delete table itself then use drop command
drop table sample;

show tables;

-- mention about other databases as well
select * from persons limit 5;

select * from persons where city="Bangalore" limit 3;

select * from persons order by firstname limit 3;

-- to add new column in database we use alter command here I am adding new column so I can use aggregate functions for video

alter table persons add column marks int;

desc persons;

update persons set marks=90 where firstname="Mukesh";

update persons set marks=70 where firstname="Jane";
update persons set marks=40 where firstname="Patricia";
update persons set marks=30 where firstname="Otwani";

-- added marks now we can use aggregate functions

select min(marks) from persons;
select max(marks) from persons;

select min(marks) as lessmarks from persons;
select max(marks) as maxmarks from persons;

select count(*) from persons;

select count(*) from persons where city="Bangalore";

select * from persons where city="Bangalore";

select count(marks) from persons where marks<60;

select count(distinct marks) from persons;

select count(*) as NumberOfRecords from persons where city="Lakeside";

select sum(marks) from persons;

select avg(marks) from persons;





