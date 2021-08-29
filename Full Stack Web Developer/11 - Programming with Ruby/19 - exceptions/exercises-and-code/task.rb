class InvalidUserAge < StandardError; end

def validate_age!(age)
  if age < 2 || age > 121
    raise InvalidUserAge, "Invalid User Age #{age}! Has to be between 2 and 121"
  end
end

print 'Please, give me your age (2 up to 121): '
age = gets.to_i

validate_age! age

puts "Thanks, your age #{age} is within range!"
