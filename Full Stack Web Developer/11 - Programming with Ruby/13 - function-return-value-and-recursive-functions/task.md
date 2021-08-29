{% quiz %}

# Task B

You need to write an enhanced version of the fibonacci function. The current version that is presented in the content of
the chapter has the disadvantage that it calculates the fibonacci number for the same position multiple times. Can you add
some kind of memory to the algorithm? This means that if a fibonacci number has been calculated for a position, you can
save that to another variable and when that fibonacci is requested again, you could return the result from the variable rather
than calculating that again. A possible implementation might be that you save the result of each calculation to a `Hash` variable
with the key being the position (e.g. `fibonacci_memory[n - 1] = fibonacci(n - 1)`). The `fibonacci` function, then, it needs
to first look inside the hash (the `fibonacci_memory`) whether the number has already been calculated and return that. If the
number is not there, it should calculate the fibonacci number and save it to memory, ready to picked up in the next call that
it will be requested.

Note 1: Use benchmark to measure the performance of your version and compare it to the version given in the content of the
chapter.

Note 2: The version in the content of the chapter had an upper limit of 40. Remove any limit.

You can double check your results with the help of an online fibonacci calculator. Google for one.

**Important**: Your code needs to be uploaded into a new project on your Github account. Invite your mentor to review your code online.
