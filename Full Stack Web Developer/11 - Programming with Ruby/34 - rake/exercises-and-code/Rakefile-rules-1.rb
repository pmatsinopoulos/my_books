# File: Rakefile-rules-1.rb
#
rule '.txt' do |t|
  puts "This is executed for every task that ends with .txt. This one is #{t.name}"
end
