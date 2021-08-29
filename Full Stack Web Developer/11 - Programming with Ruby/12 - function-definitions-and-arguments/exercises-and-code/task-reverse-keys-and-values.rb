def print_reverse_keys_and_values(hash)
  result = {}
  hash.each do |key, value|
    result[value] = key
  end
  puts result.inspect
end

example = {a: 1, b: 2}
print_reverse_keys_and_values(example)
