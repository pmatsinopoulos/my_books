# File: Rakefile-dependencies-1.rb
#
task :hello do
  print 'Hello'
end

task :world do
  print ' World!'
end

task default: [:hello, :world] do
  puts
end
