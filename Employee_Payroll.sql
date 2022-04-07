Enter password: ********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 13
Server version: 8.0.28 MySQL Community Server - GPL

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.
mysql> create database payroll_services;
Query OK, 1 row affected (0.22 sec)

mysql> show databases;
+----------------------+
| Database             |
+----------------------+
| address_book_service |
| addressbookservice   |
| information_schema   |
| mysql                |
| payroll_services     |
| performance_schema   |
| sys                  |
+----------------------+
7 rows in set (0.24 sec)

mysql> use payroll_services;
Database changed
mysql>


mysql> create table employee_payroll(id int not null auto_increment,
    -> name varchar(32) not null,salary Double not null,startDate Date not null,
 primary key(id) );
Query OK, 0 rows affected (2.43 sec)

mysql> desc employee_payroll;
+-----------+-------------+------+-----+---------+----------------+
| Field     | Type        | Null | Key | Default | Extra          |
+-----------+-------------+------+-----+---------+----------------+
| id        | int         | NO   | PRI | NULL    | auto_increment |
| name      | varchar(32) | NO   |     | NULL    |                |
| salary    | double      | NO   |     | NULL    |                |
| startDate | date        | NO   |     | NULL    |                |
+-----------+-------------+------+-----+---------+----------------+
4 rows in set (0.09 sec)
mysql> insert into employee_payroll(name,salary,startDate)values('Rani',50000,'2
022-06-1');
Query OK, 1 row affected (0.15 sec)

mysql> insert into employee_payroll(name,salary,startDate)values('Jia',70000,'20
21-04-1');
Query OK, 1 row affected (0.19 sec)

mysql>
mysql> insert into employee_payroll(name,salary,startDate)values('Sana',80000,'2
020-03-1');
Query OK, 1 row affected (0.15 sec)

mysql>

mysql> select * from employee_payroll;
+----+------+--------+------------+
| id | name | salary | startDate  |
+----+------+--------+------------+
|  1 | Rani |  50000 | 2022-06-01 |
|  2 | Jia  |  70000 | 2021-04-01 |
|  3 | Sana |  80000 | 2020-03-01 |
+----+------+--------+------------+
3 rows in set (0.00 sec)
