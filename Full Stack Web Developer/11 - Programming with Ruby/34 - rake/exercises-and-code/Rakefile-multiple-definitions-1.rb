# File: Rakefile-multiple-definitions-1.rb
#
task :billing do
  puts 'I will now bill!'
end

task :ordering do
  puts 'First we need an order'
end

task billing: [:ordering]

task default: [:billing]
