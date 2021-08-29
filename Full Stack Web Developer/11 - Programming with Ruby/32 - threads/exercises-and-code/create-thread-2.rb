# File: create-thread-2.rb
#
elements = ['a', 'b', 'c', 'd', 'e']

5.times do
  Thread.start(rand(elements.size)) do |element_index|
    puts "element on index #{element_index}: #{elements[element_index]}"
  end
end

sleep 2
