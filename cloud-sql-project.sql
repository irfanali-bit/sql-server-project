CREATE DATABASE IF NOT EXISTS cloud_sql;
USE cloud_sql;

CREATE TABLE server (
    server_id INT PRIMARY KEY,
    server_name VARCHAR(50),
    status VARCHAR(20),
    cpu INT,
    city VARCHAR(50)
);

INSERT INTO server (server_id, server_name, status, cpu, city)
VALUES
(1, 'server1', 'active', 25, 'Jaipur'),
(2, 'server2', 'inactive', 0, 'Delhi'),
(3, 'server3', 'active', 85, 'Mumbai'),
(4, 'server4', 'active', 60, 'Pune'),
(5, 'server5', 'inactive', 0, 'Delhi');

SELECT * FROM server;

SELECT * FROM server
WHERE status = 'active';

SELECT * FROM server
WHERE cpu > 50;

SELECT status, COUNT(*)
FROM server
GROUP BY status;

SELECT city, AVG(cpu)
FROM server
GROUP BY city;

SELECT city, AVG(cpu)
FROM server
GROUP BY city
HAVING AVG(cpu) > 50;
