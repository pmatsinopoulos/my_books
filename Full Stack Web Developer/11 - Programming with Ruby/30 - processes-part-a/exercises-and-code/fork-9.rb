# File: fork-9.rb
#
number_of_processes_to_spawn = [
    {number_of_sleeps: 10, process_id: nil},
    {number_of_sleeps: 5, process_id: nil},
]

number_of_processes_to_spawn.size.times do |i|
  number_of_processes_to_spawn[i][:process_id] = fork do
    number_of_processes_to_spawn[i][:number_of_sleeps].times do
      puts "I am child process with index #{i} and process id: #{Process.pid} and parent: #{Process.ppid}"
      sleep 1
    end
    exit i
  end
end

child_process_id = Process.waitpid(number_of_processes_to_spawn[1][:process_id])
puts "Child with id #{child_process_id}/#{number_of_processes_to_spawn[1][:process_id]} just finished!"
