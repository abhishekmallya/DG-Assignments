CREATE TABLE Customer(customer_id int, product_key int);

CREATE TABLE Product(product_key int);

Insert Into Customer values(1,5);
Insert Into Customer values(2,7);
Insert Into Customer values(3,5);
Insert Into Customer values(3,6);
Insert Into Customer values(1,6);


Insert Into Product values(7);
Insert Into Product values(6);


select * from Customer;
select * from product;


select customer_id from customer
group by customer_id
having count(*) = (select count(*) from product);