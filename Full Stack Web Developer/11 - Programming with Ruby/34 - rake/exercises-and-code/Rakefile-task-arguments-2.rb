# File: Rakefile-task-arguments-2.rb
#
task :welcome, [:first_name, :last_name] do |t, arguments|
  arguments.with_defaults(first_name: 'Unknown First Name', last_name: 'Unknown Last Name')
  puts "Hello #{arguments.first_name} #{arguments.last_name}"
end

