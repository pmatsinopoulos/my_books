# File:: struct-3.rb
#
Car = Struct.new(:make, :model, :color)

car = Car.new('Aston Martin', 'Rapide', 'Blue')

puts "car members: #{car.members}"

car[:color] = 'White'

car.members.each do |member|
  human_name_for_member = member.to_s.delete(':').capitalize
  member_value = car[member]

  puts "Car #{human_name_for_member}: #{member_value}"
end

