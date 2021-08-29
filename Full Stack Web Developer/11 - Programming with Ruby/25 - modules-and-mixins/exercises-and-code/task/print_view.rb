# File: print_view.rb
#
module PrintView
  def self.included(base)
    base.include InstanceMethods
    base.extend ClassMethods
  end

  module InstanceMethods
    def print
      line_to_print = members.map do |member|
        value = self[member]
        value.is_a?(String) ? value.ljust(self.class.column_width) : value.to_s.rjust(self.class.column_width)
      end.join(' | ')
      puts "#{line_to_print} |"
    end
  end

  module ClassMethods
    def headers
      members
    end

    def column_width
      self::COLUMN_WIDTH
    end
  end
end
