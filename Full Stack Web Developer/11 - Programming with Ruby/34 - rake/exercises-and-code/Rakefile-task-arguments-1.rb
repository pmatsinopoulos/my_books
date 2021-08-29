# File: Rakefile-task-arguments-1.rb
#
task :welcome, [:first_name, :last_name] do |t, arguments|
  puts "Hello #{arguments.first_name} #{arguments.last_name}"
end

