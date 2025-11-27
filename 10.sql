-- Write down appropriate SQL statements on deleting records in a table.
--  1. delete from client_master where the column state holds the value ‘Maharashtra’.

-- OBJECTIVE:
--  1. Understanding of how records are deleted. 

-- SQL Statement: Delete all clients from Maharashtra


DELETE FROM client_master
WHERE state = 'Maharashtra';