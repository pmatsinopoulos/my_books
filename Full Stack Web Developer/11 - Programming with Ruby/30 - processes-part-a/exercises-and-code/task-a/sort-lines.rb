# File: task.rb
#
def print_usage
  $stderr.puts "ruby #{$PROGRAM_NAME} <file1> [<file2> ...]"
end

if ARGV.size == 0
  print_usage
end

filenames = ARGV.dup
ARGV.clear

filenames.each do |filename|
  child_code = -> do
    require_relative 'file_sorter'
    FileSorter.new(filename).sort
  end

  if filenames.size > 1
    fork &child_code
  else
    child_code.call
  end
end

filenames.size.times do
  Process.wait
end if filenames.size > 1

puts "Sorting has finished!"

