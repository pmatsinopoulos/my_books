# File: Rakefile-file-task-1.rb
#
file 'foo_text_file.txt' do
  puts 'Executing foo_text_file task...'
  File.write('foo_text_file.txt', 'This is foo text file')
  puts '...end of foo_text_file task'
end

task default: 'foo_text_file.txt'
