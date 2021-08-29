# File: Rakefile-directory-tasks-1.rb
#
directory 'foo-directory'
task 'foo-directory' => :announce
task :announce do
  puts "About to create a directory"
end
task default: 'foo-directory'
