
create type activ as enum ('approved', 'declined');
CREATE TABLE Transactions(id int, country varchar,state activ, amount int, trans_date date);

CREATE TABLE Chargebacks(trans_id int, trans_date date);



Insert Into Transactions values(101,'US','approved',1000,'2019-05-18');
Insert Into Transactions values(102,'US','declined',2000,'2019-05-19');
Insert Into Transactions values(103,'US','approved',3000,'2019-06-10');
Insert Into Transactions values(104,'US','declined',4000,'2019-06-13');
Insert Into Transactions values(105,'US','approved',5000,'2019-06-15');

Insert Into Chargebacks values(102,'2019-05-29');
Insert Into Chargebacks values(101,'2019-06-30');
Insert Into Chargebacks values(105,'2019-09-18');



select * from Chargebacks;



select 
    month
    ,country
    ,sum(case when state = 'approved' then 1 else 0 end) as approved_count
    ,sum(case when state = 'approved' then amount else 0 end) as approved_amount
    ,sum(case when state = 'chargeback' then 1 else 0 end) as chargeback_count
    ,sum(case when state = 'chargeback' then amount else 0 end) as chargeback_amount
from ((
        select 
            TO_CHAR(trans_date, 'YYYY-MM')  as month
            ,country
            ,amount
            ,'approved' as state
        from Transactions 
        where state = 'approved'
       ) 
 union all 
(select TO_CHAR(Chargebacks.trans_date, 'YYYY-MM')  as month,
        country, 
        amount, 
        'chargeback' as state
from Transactions 
inner join Chargebacks 
on Transactions.id = Chargebacks.trans_id
)) temp
group by temp.month, temp.country
order by month;
