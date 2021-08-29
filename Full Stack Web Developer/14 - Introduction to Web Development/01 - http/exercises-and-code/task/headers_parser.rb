# File: headers_parser.rb
#
class HeadersParser

  def initialize(lines, current_line_index)
    @lines = lines.dup
    @current_line_index = current_line_index
  end

  def parse
    result = {}
    header_line = lines[current_line_index]

    until header_line.empty? do
      header_key, header_value = header_line.split(':').map { |i| i.strip }
      result[header_key] = header_value
      self.current_line_index = current_line_index + 1
      header_line = lines[current_line_index]
    end

    [result, current_line_index]
  end

  private

  attr_accessor :lines, :current_line_index
end
