# File: storing-string-to-a-file-1.rb
#
def get_answer
  answer = gets.chomp
  if answer.length.zero?
    puts 'You need to give an answer to the question!'
    exit 1
  end
  answer
end

print 'Give me the string you want stored into a file: '
string_to_store = get_answer

print 'Give me the file name you want string to be stored into: '
file_name = get_answer

File.write(file_name, string_to_store)
