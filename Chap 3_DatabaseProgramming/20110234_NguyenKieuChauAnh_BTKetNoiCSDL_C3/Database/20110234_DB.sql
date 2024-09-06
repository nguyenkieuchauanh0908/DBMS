create database Connect_Android_To_SQLS
go
create table Products(
Product_ID int primary key,
ItemName nvarchar(50),
Design nvarchar(100),
Color nvarchar(20)
);
go
insert into Products values(101,'RAM','Dell New version','Red')
insert into Products values(102,'Mouse','HP New version','Black')
insert into Products values(103,'Monitor','HP New version','Black')
insert into Products values(104,'Laptop','Apple New vesion','White')
go
select * from Products
