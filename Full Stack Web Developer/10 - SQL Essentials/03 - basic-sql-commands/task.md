{% quiz %}

# Task B

## Create a table with the following properties:

1. Table belongs to the database `school_db`. You have to create this database.
2. Name of the table is `students`.
3. Table has the following columns:
    1. column `id` which is an integer with display length 11. It should not be taking null values and it should be auto-incremented. 
    2. column `first_name` which is a string with maximum 50 characters. It should not be taking null values.
    3. column `last_name` which is a string with maximum 100 characters. It should not be taking null values.
4. Then insert the following data:
```
+------------+-----------+    
| first_name | last_name |
| John       | Smith     |
| Mary       | Foo       |
| Paul       | Woo       |
+------------+-----------+
```

# Task C

## Create a table with the following properties:

1. Table belongs to the database `bookings_db`. You have to create this database.
2. Name of the table will be `bookings`.
3. Table has the following columns:
    1. column `id` which is an integer with display length 11. It should not be taking null values and it should be auto-incremented.
    2. column `primary_guest_first_name` which is a string with maximum 50 characters. It should not be taking null values.
    3. column `primary_guest_last_name` which is a string with maximum 100 characters. It should not be taking null values.
    4. column `check_in` which needs to be of type `date`. It should not be taking null values.
    5. column `check_out` which needs to be of type `date`. It should not be taking null values.
4. Then insert the following data:
```
+------------------+-----------------+------------+------------+
| guest_first_name | guest_last_name | check_in   | check_out  |
+------------------+-----------------+------------+------------+
| Panos            | Matsos          | 2021-12-13 | 2021-12-15 |
| Peter            | Pan             | 2021-12-18 | 2021-12-21 |
| John             | Woo             | 2022-01-04 | 2022-01-18 |
+------------------+-----------------+------------+------------+
```

**Important**: Your code (all SQL statements) needs to be uploaded into a new project on your Github account. Invite your mentor to review your code online.
