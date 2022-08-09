CREATE TABLE RequestAccepted (requester_id INTEGER, accepter_id INTEGER, accept_date DATE);

--Insert Into RequestAccepted values(3,4,'2016/06/09');

select * from RequestAccepted;

SELECT id, COUNT(*) AS num 
FROM (
      SELECT requester_id AS id FROM requestaccepted
      UNION ALL
      SELECT accepter_id FROM requestaccepted
      ) AS friends_count
GROUP BY id
ORDER BY num DESC 
LIMIT 1;
