class String
  def upcase
    upcase!
  end
end

greeting = "Hello World!"

puts "About to call modified upcase:"

greeting.upcase

puts "Greeting now is: #{greeting}"
