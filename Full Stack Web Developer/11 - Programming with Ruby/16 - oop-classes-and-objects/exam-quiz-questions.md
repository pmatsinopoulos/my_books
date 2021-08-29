### Question #9 - Given the following class definition, which of the following is an instance variable?
``` ruby
class Car
  def initialize
    a = 5
    @b = 100
    c = 6
    d = 8
  end
end
```

*Multiple Choice*

1. `a`
2. `b`
3. `c`
4. `d`

### Question #13 - Fill in the blanks so that the following program is correct.

*Fill In The Blanks*

``` ruby
_____ Point
  def in________(x, _)
    @x = x
    ______
  end

  def y=(value)
    ___________
  end

  def y
    @y
  end
end

point = Point.new(2, 3)

point.y = 5

puts point.y
```
