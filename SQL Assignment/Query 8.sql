
CREATE TABLE Products(product_id int, new_price int, change_date date);



Insert Into Products values(1,20,'2019-08-14');
Insert Into Products values(2,50,'2019-08-14');
Insert Into Products values(1,30,'2019-08-15');
Insert Into Products values(1,35,'2019-08-16');
Insert Into Products values(2,65,'2019-08-17');
Insert Into Products values(3,20,'2019-08-18');








select * from Products;



select * from (
        select product_id, new_price as price from Products
        where (product_id, change_date) in (
         select product_id, max(change_date) from Products
         where change_date <= '2019-08-16'
         group by product_id
         )
    union
         select distinct product_id, 10 as price from Products
          where product_id not in (
          select product_id from Products
           where change_date <= '2019-08-16'
           )
    ) union_result;


