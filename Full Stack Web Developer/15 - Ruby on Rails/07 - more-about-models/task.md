{% quiz %}

# Task B

Make sure that the following features/tasks, that have been explained in the chapter, have been accomplished in your `blog` application.

1. The Sign Up Form should display the terms of service. The user should confirm that they accept the terms of service
1. Make sure that whenever an User is deleted, their corresponding Articles are deleted too.
1. Introduce the model `Category` and make sure that there is a many-to-many association between Articles and Categories.
1. Make also use of the `has_many` `through` association so that you can travel directly from an article to its categories.
1. Make sure that the index page for Articles uses `find_each` to parse all the Articles.
1. Make sure that the Articles are sorted by `title` when listed in the index page.
