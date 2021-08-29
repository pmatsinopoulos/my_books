In the previous chapters we have started implementing our primitive customer relationship management system. We have already
implemented the `customers_db` and the table `customers`. In this chapter we are going to implement the table `products`.

![./images/We'll Implement Table products](./images/crm-entity-relationship-diagram-new-table-products.png)

Table products:

* Will have a primary key `id`. This will be integer, not null and auto incremented.
* It will have a `name`, which is going to be a string, not null and unique.
* It will have a `price`, which is going to be a decimal number, not null.

Let's start.

Initially, we open the terminal and we start `mysql` client:

``` bash
$ mysql -u root
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 2548
Server version: 5.7.14 MySQL Community Server (GPL)

Copyright (c) 2000, 2016, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> 
```

We then switch to the `customers_db` database:

``` sql
mysql> use customers_db;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
```

Let's see the tables that exist inside our database:

``` sql
mysql> show tables;
+------------------------+
| Tables_in_customers_db |
+------------------------+
| customers              |
+------------------------+
1 row in set (0.00 sec)
```

## Creating Table products

We will now create the table `products`. You already know the command to create a table. Let's see its incarnation for the table `products`.

``` sql
mysql> create table products (id int(11) not null auto_increment, name varchar(255) not null, price numeric(15, 2) not null, primary key(id));
Query OK, 0 rows affected (0.05 sec)
```

The only new thing to you here is the `numeric(15, 2)` which is the type for the `price` column. It denotes that this column is going to hold
real numbers, or decimal numbers as we sometimes call them. These numbers are going to have 2 decimal digits and their maximum number of digits
is going to be 15. 

Now, if you type `show tables` you will see the new table in the list of tables for the current database:

``` sql
mysql> show tables;
+------------------------+
| Tables_in_customers_db |
+------------------------+
| customers              |
| products               |
+------------------------+
2 rows in set (0.00 sec)
```

Let's also see the structure of this new table:

``` sql
mysql> show create table products;
+----------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table    | Create Table                                                                                                                                                                                                                                  |
+----------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| products | CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(15,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci |
+----------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.01 sec)
```

You can see that this new table has exactly 3 columns with the specifications that we have given while entering the `create table` command.

## Unique Name

Now, we need to make sure that no 2 or more products have the same name. The name should be unique. Also, we need to make sure that we can quickly search
for products using the name as criteria. In order to do that, we need to create a unique index on the `name` column.

You already know how to create a unique index. Let's try that:

``` sql
mysql> create unique index products_name_uidx on products(name);
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0
```

As you can see, we've got back `Query OK`. Let's verify the existence of the new unique index:
 
``` sql
mysql> show create table products;
+----------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table    | Create Table                                                                                                                                                                                                                                                                              |
+----------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| products | CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(15,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_name_uidx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci |
+----------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)
```

As you can see, there is a new row in the specification:
 
``` sql
UNIQUE KEY `products_name_uidx` (`name`)
```
which specifies the unique index on column `name`.

## Inserting a Product

Having the table ready, let's insert a new product into the table:

``` sql
mysql> insert into products (name, price) values ('Game of Thrones - S01 - DVD', 50.0);
Query OK, 1 row affected (0.01 sec)
```

As you can see above, in the `insert` statement, we first specify the columns we will give values for, and then we give the values themselves.

Let's double check that the product has been created:

``` sql
mysql> select * from products;
+----+-----------------------------+-------+
| id | name                        | price |
+----+-----------------------------+-------+
|  1 | Game of Thrones - S01 - DVD | 50.00 |
+----+-----------------------------+-------+
1 row in set (0.01 sec)
```

As you can see, the product has been created. Its `id` has been set to `1`, automatically. The `price` is a real number with 2 decimal digits.

Let's create one more product:

``` sql
mysql> insert into products (name, price) values ('Of Mice and Men', 19.80);
Query OK, 1 row affected (0.01 sec)
```

And check that is has been successfully inserted:

``` sql
mysql> select * from products;
+----+-----------------------------+-------+
| id | name                        | price |
+----+-----------------------------+-------+
|  1 | Game of Thrones - S01 - DVD | 50.00 |
|  2 | Of Mice and Men             | 19.80 |
+----+-----------------------------+-------+
2 rows in set (0.00 sec)
```

Nice. The new product has `id` `2`, which has been assigned automatically.

Let's insert one more product:

``` sql
mysql> insert into products (name, price) values ('A Nice Story', 5.00);
Query OK, 1 row affected (0.00 sec)
```

and double check that it has been inserted:

``` sql
mysql> select * from products;
+----+-----------------------------+-------+
| id | name                        | price |
+----+-----------------------------+-------+
|  1 | Game of Thrones - S01 - DVD | 50.00 |
|  2 | Of Mice and Men             | 19.80 |
|  3 | A Nice Story                |  5.00 |
+----+-----------------------------+-------+
3 rows in set (0.00 sec)
```

We now have 3 products in our product catalogue.

## Counting

Suppose that we have a very long product catalogue and we want to count the number of products in our catalogue. The command to do that is the
following:

``` sql
mysql> select count(*) from products;
+----------+
| count(*) |
+----------+
|        3 |
+----------+
1 row in set (0.00 sec)
```

What if we wanted to count the products that have price greater than 10?

``` sql
mysql> select count(*) from products where price > 10;
+----------+
| count(*) |
+----------+
|        2 |
+----------+
1 row in set (0.01 sec)
```

This returned `2` because we have only 2 products with price greater than 10.

## Sorting - Ordering Results

There are many times that we want the results to be returned in a specific order. For example, let's suppose that we want to get 
the list of products in ascending order of name. This is how we do that:

``` sql
mysql> select * from products order by name;
+----+-----------------------------+-------+
| id | name                        | price |
+----+-----------------------------+-------+
|  3 | A Nice Story                |  5.00 |
|  1 | Game of Thrones - S01 - DVD | 50.00 |
|  2 | Of Mice and Men             | 19.80 |
+----+-----------------------------+-------+
3 rows in set (0.00 sec)
```

As you can see, the results were now returned in an order different from the order returned by the `select * from products` command. 
The first returned product has a name which starts with `A`. The second starts with `G`. The third starts with `O`.

Similarly, if we wanted to sort by price, then we would issue the following command:

``` sql
mysql> select * from products order by price;
+----+-----------------------------+-------+
| id | name                        | price |
+----+-----------------------------+-------+
|  3 | A Nice Story                |  5.00 |
|  2 | Of Mice and Men             | 19.80 |
|  1 | Game of Thrones - S01 - DVD | 50.00 |
+----+-----------------------------+-------+
3 rows in set (0.00 sec)
```

You can see that we first get the product with price `5.00`, then the product with price `19.80` and finally the product with price `50.00`.

If we want to list the products with the most expensive product at the top and the cheapest product at the bottom, then we would have to use the 
predicate `desc`, in order to specify that we want a descending order by name:

``` sql
mysql> select * from products order by price desc;
+----+-----------------------------+-------+
| id | name                        | price |
+----+-----------------------------+-------+
|  1 | Game of Thrones - S01 - DVD | 50.00 |
|  2 | Of Mice and Men             | 19.80 |
|  3 | A Nice Story                |  5.00 |
+----+-----------------------------+-------+
3 rows in set (0.00 sec)
```

## Limiting Number Of Records Returned

Sometimes we want to return the first row that matches the select criteria, even if more rows might match. We can do that using the `limit` at the
end of the select statement.

For example, let's suppose that we want to get the most expensive product in our catalogue. This is returned with the following select statement:

``` sql
mysql> select * from products order by price desc limit 1;
+----+-----------------------------+-------+
| id | name                        | price |
+----+-----------------------------+-------+
|  1 | Game of Thrones - S01 - DVD | 50.00 |
+----+-----------------------------+-------+
1 row in set (0.00 sec)
```

As you can see, we only have 1 record returned, thanks to the `limit 1` predicate.

Similarly, if we wanted to get the cheapest product only, we could do it with the following command:

```
mysql> select * from products order by price limit 1;
+----+--------------+-------+
| id | name         | price |
+----+--------------+-------+
|  3 | A Nice Story |  5.00 |
+----+--------------+-------+
1 row in set (0.00 sec)
```

## Combining `where`, `order by` and `limit`

`where`, `order by` and `limit` can be combined together in one select statement, as long as it makes sense of course. For example:
 
``` sql
mysql> select * from customers where name like '%oo' order by name limit 2;
```
 
Will bring the first 2 customers order by ascending order of name, whose name ends with `'oo'`.
 
## Closing Note

We would like to close this chapter by giving you a link to a video / screencast with the chapter content. You may want to 
watch it as an alternative source of learning. 

<div id="media-title-video-counting-sorting-and-limiting-records.mp4">Chapter Video / Screencast - Counting and Sorting Records - Limiting Results</div>
<a href="https://player.vimeo.com/video/194409323"></a>          
