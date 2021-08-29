# File: lib/addition.rb
#
def add(array_of_integers = [])
  array_of_integers ||= []
  sum = 0
  array_of_integers.each do |integer|
    sum += integer
  end
  sum
end
