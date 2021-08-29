{% quiz %}

# Task B. 

You need to design and implement a small program that will calculate the intersection point of two lines. Here is 
an example run of such a program:

``` bash
The equation of a straight line is of the form y = a * x + b. Having said that...
Give the constant factor 'a' for line number 1: 0.12
Give the constant factor 'b' for line number 1: 19.3
Nice. Line is 'y = 0.12 * x + 19.3'
Give the constant factor 'a' for line number 2: 0.44
Give the constant factor 'b' for line number 2: 5
Nice. Line is 'y = 0.44 * x + 5.0'
Intersection Point: #<struct Point x=44.69, y=24.66>
```

Make sure that you satisfy the following requirements:
1. Model the Point using `Struct`
2. Model the Straight Line using a `Struct`. Note that a straight line is defined by two points.
3. Model the intersection point calculator using a `Class` that would be initialized with two straight line instances. It will
also need to have a method `calculate` that would return a point instance. 
4. Hint: `x = (line2_b - line1_b) / (line1_a - line2_a)` and `y = line1_a * x + line1_b`. These will give you the coordinates
of the intersection point. If you want to read more about this, have a look here: [Intersection of two straight lines ](http://www.mathopenref.com/coordintersection.html)
5. Make sure that the model of Point is in its own file.
6. Make sure that the model of straight line` is in its own file.
7. Make sure that the model of the intersection point calculator is in its own file.

**Important**: Your code needs to be uploaded into a new project on your Github account. Invite your mentor to review your code online.
