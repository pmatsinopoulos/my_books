# File: fork-6.rb
#
number_of_processes_to_spawn = [
    {number_of_sleeps: 10},
    {number_of_sleeps: 5},
]

number_of_processes_to_spawn.size.times do |i|
  fork do
    number_of_processes_to_spawn[i][:number_of_sleeps].times do
      puts "I am child process with index #{i} and process id: #{Process.pid} and parent: #{Process.ppid}"
      sleep 1
    end
  end
end

child_process_finished = Process.wait
puts "My child #{child_process_finished} just finished. I am quitting too."
