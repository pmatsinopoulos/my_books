{% quiz %}

# Task B

Create a students database following the next entity relationship diagram.

![./images/Students Database ERD](./images/students-db-for-task.jpg)

Some things that may not be obvious from the diagram are:

1. All tables `id` columns are mandatory and primary keys that take values automatically using increments.
2. Table `students`:
    1. `name` should be mandatory with maximum 255 characters. It should also be unique.
    1. `address` should be mandatory with maximum 255 characters. 
    1. `date_of_registration` should be mandatory. It should be of type `date` and not `datetime`.
3. Table `courses`:
    1. `name` should be mandatory with maximum 255 characters. It should also be unique.
4. Table `student_courses`:
    1. `student_id` should be mandatory. 
    1. `course_id` should be mandatory.
    1. `enrolment_date` should be mandatory. It should be of type `date` and not `datetime`.
    1. The same student should not be allowed to enrol on the same course more than once.
    
    
**Important**: Your code (all SQL statements) needs to be uploaded into a new project on your Github account. Invite your mentor to review your code online.
