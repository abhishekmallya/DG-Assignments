
CREATE TYPE acti AS ENUM ('login', 'logout', 'jobs', 'groups', 'homepage');
CREATE TABLE Traffic(user_id int, activity acti , activity_date date);



Insert Into Traffic values(1,'login','2019-05-01');
Insert Into Traffic values(1,'homepage','2019-05-01');
Insert Into Traffic values(1,'logout','2019-05-01');
Insert Into Traffic values(2,'login', '2019-06-21');
Insert Into Traffic values(2,'logout','2019-06-21');
Insert Into Traffic values(3,'login','2019-01-01');
Insert Into Traffic values(3,'jobs','2019-01-01');
Insert Into Traffic values(3,'logout','2019-01-01');
Insert Into Traffic values(4,'login','2019-06-21');
Insert Into Traffic values(4,'groups','2019-06-21');
Insert Into Traffic values(4,'logout','2019-06-21');
Insert Into Traffic values(5,'login','2019-03-01');
Insert Into Traffic values(5,'logout','2019-03-01');
Insert Into Traffic values(5,'login','2019-06-21');
Insert Into Traffic values(5,'logout','2019-06-21');







select * from Traffic;



SELECT login_date, COUNT(user_id) AS  user_count
      FROM 
      (SELECT user_id, MIN(activity_date) AS login_date
       FROM Traffic
       WHERE activity='login'
       GROUP BY user_id) AS t
       WHERE ('2019-06-30'::date-login_date::date) <= 90
       GROUP BY login_date
       ORDER BY login_date

