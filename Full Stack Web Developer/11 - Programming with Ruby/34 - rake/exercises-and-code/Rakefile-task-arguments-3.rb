# File: Rakefile-task-arguments-3.rb
#
task :order do
  puts 'Processing order'
end

task :bill, [:first_name, :last_name] => [:order] do |t, arguments|
  puts "Billing #{arguments.first_name} #{arguments.last_name}"
end
