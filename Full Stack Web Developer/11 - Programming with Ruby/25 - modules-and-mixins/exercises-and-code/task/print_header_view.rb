# File: print_header_view.rb
#
module PrintHeaderView
  def print
    return if size.zero?

    print_headers
    each do |element|
      element.print
    end
    print_header_horizontal_line
  end

  private

  def print_headers
    print_header_horizontal_line

    print_header

    print_header_horizontal_line
  end

  def print_header
    line_to_print = headers.map do |header|
      header.to_s.capitalize.tr('_', ' ').ljust(column_width)
    end.join(' | ')
    puts "#{line_to_print} |"
  end

  def print_header_horizontal_line
    puts "#{'-' * column_width} | " * headers.size
  end

  def column_width
    first.class.column_width
  end

  def headers
    first.class.headers
  end
end

class Array
  include PrintHeaderView
end


