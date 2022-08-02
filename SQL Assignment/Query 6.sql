CREATE TABLE Users(user_id int, join_date date, favorite_brand varchar);

CREATE TABLE Orders(order_id int, order_date date, item_id int, buyer_id int, seller_id int);

CREATE TABLE Items(item_id int, item_brand varchar);

Insert Into Users values(1, '2018-01-01','Lenovo');
Insert Into Users values(2, '2018-02-09', 'Samsung');
Insert Into Users values(3, '2018-01-19','LG');
Insert Into Users values(4, '2018-05-21', 'HP');

Insert Into Orders values(1,'2019-08-01', 4, 1, 2);
Insert Into Orders values(2,'2018-08-02', 2, 1, 3);
Insert Into Orders values(3,'2019-08-03', 3, 2, 3);
Insert Into Orders values(4,'2018-08-04', 1, 4, 2);
Insert Into Orders values(5,'2018-08-04', 1, 3, 4);
Insert Into Orders values(6,'2019-08-05', 2, 2, 4);


Insert Into Items values(1, 'Samsung');
Insert Into Items values(2, 'Lenovo');
Insert Into Items values(3, 'LG');
Insert Into Items values(4, 'HP');


select * from Users;
select * from Orders;
select * from Items;



SELECT U.user_id AS buyer_id, U.join_date, 
SUM(CASE WHEN extract(YEAR from O.order_date) = '2019' THEN 1 ELSE 0 END) AS orders_in_2019
FROM Users U
LEFT JOIN Orders O
ON U.user_id = O.buyer_id
GROUP BY U.user_id,U.join_date
ORDER BY U.user_id;





