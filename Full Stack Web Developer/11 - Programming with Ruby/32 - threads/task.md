You need to write two versions of the same program. Both of these versions are going to be implementations using threads.
There is going to be a big difference on these two implementations though. The first implementation will be using a
mutex. The second implementation will NOT be using a mutex. But both implementations need to be thread-safe.
 
Here is the function that your program needs to implement.

1. The program simulates the case in which we have to carry out a long running task multiple times and store the
results of each task into an array of elements. 
1. Since each task is long running we decide to spread the effort to a number of workers.
1. Let's assume that the number of tasks is 10 and the number of workers is 3. 
1. The program needs to fill in an array of 10 elements with the result of the 10 tasks.
1. Each task is very simple. It picks up randomly an uppercase letter of the latin alphabet. 
1. So, at the end of the program, the array should be something like `["I", "A", "V", "A", "Y", "S", "I", "H", "A", "M"]`

**1st Version:**

Let's see some more details about the 1st version of the program.

1. The program should start with an empty array and then it should ask the 3 workers to try to fill in the
array concurrently. I.e. 3 threads trying to fill in the array with the random latin alphabet letter.
All threads should be working concurrently.
1. When the 3 workers will not have anything else to do, the main thread should just carry out a double check
    1. Main thread should check that the array has 10 elements and
    1. each element is an uppercase letter of the latin alphabet.
    
We believe that this 1st version of a program, requires a mutex to be used to synchronize the access to the
shared array of elements.

**2nd Version:**

Can you write a better version of the program that it wouldn't require a mutex? Hint: Tell each worker/thread to
write to/work with different parts of the shared array.

For both versions:

1. The number of tasks (i.e. the number of the elements in the array, at the end of the program) should be given
by the user.
1. The number of workers (i.e. the number of concurrent threads that will be executing the tasks) should be given 
by the user.
1. The actual work should be benchmarked using the [Benchmark](https://ruby-doc.org/stdlib-2.3.0/libdoc/benchmark/rdoc/Benchmark.html) module.
We have introduced that in the chapter `Function Return Value and Recursive Functions` (in its task actually).

Here is an example run:

``` bash
Give me the number of elements: 10000000
Give me the number of workers: 5
              user     system      total        real
         81.170000  29.870000 111.040000 ( 91.947115)
Job done? true
```

**Important:** Upload your work to your Github account. Your mentor will evaluate it online.
