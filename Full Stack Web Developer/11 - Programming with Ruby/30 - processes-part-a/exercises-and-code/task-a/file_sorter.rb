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
