# File: deadlock-1.rb
#
mutex1 = Mutex.new
mutex2 = Mutex.new

thread1 = Thread.new do
  puts 'Thread 1 waiting for mutex1 lock ...'
  mutex1.lock
  puts 'Thread 1 acquired mutex1 lock...'
  sleep 1
  puts 'Thread 1 waiting for mutex2 lock ...'
  mutex2.lock
  puts 'Thread 1 acquired mutex2 lock...'
  sleep 1
  mutex2.unlock
  sleep 1
  mutex1.unlock
end

thread2 = Thread.new do
  puts 'Thread 2 waiting for mutex2 lock ...'
  mutex2.lock
  puts 'Thread 2 acquired mutex2 lock...'
  sleep 1
  puts "Thread 2 waiting for mutex1 lock ..."
  mutex1.lock
  puts 'Thread 2 acquired mutex1 lock...'
  sleep 1
  mutex1.unlock
  sleep 1
  mutex2.unlock
end

puts 'Main thread to wait for threads to finish!'
[thread1, thread2].each(&:join)


