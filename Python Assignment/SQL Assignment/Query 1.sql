CREATE TABLE Employee (id INTEGER,
                      name varchar(10),
                      department char(1),
                      managerid INTEGER);
                      
INSERT INTO EMPLOYEE values(106,'Ron','B', 101);


SELECT * FROM Employee;

SELECT Name 
FROM Employee
WHERE id = 
    (SELECT managerid
     FROM Employee
     GROUP BY  ManagerId
     HAVING COUNT(ManagerId) >=5
    );
