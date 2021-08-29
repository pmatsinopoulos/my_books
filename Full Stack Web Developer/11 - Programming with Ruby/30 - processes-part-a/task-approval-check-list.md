# Task B

Your student needs to create a Ruby program that spawns processes to sort files in parallel. Their implementation needs
to satisfy the requirements of the task. Note that you need to evaluate their work on their Github account.

Here is a sample implementation:

(1) The main / parent process file:

``` ruby
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
```

(2) The `FileSorter` class:

``` ruby
# File: file_sorter.rb
#
class FileSorter
  def initialize(filename)
    @filename = filename
    set_process_name
  end

  def sort
    # Load all lines of the file in memory
    lines = load_lines
    lines.sort!
    write_lines_to_file(lines)
  end

  private

  def load_lines
    File.open(@filename).each_line.to_a
  end

  def write_lines_to_file(lines)
    new_filename = "#{File.basename(@filename, '.*')}-sorted.txt"
    File.open(new_filename, "w") do |file|
      lines.each do |line|
        file.write line
        file.flush
      end
    end
  end

  def set_process_name
    $PROGRAM_NAME = "sorting_#{@filename}"
  end
end
```

