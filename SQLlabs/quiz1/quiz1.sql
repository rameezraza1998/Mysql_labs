create database quiz1;
use quiz1;
create table Product(prodID varchar(100) primary key, prodName varchar(100) unique,prodCateorgy varchar(100),price float);
describe product;
ALTER TABLE product
ALTER prodCateorgy SET DEFAULT 'others';
select * from product;
select max(price) as Most_expensive, min(price) as Least_expensive from product;
select prodName from product where prodName like'%b%' and prodName like  '%y%';

select prodName as product_name,prodCateorgy as cateogory,price from product where prodCateorgy='home' and'lifestyle' or 'kitchenware' or 'health' and 'beauty' and 'price' != '1400' and '120' and '50700';
select * from product where length(prodName)=9;