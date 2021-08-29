# File: student.rb
#
Student = Struct.new(:first_name, :last_name) do
  def ==(other)
    first_name == other.first_name && last_name == other.last_name
  end

  alias eql? ==

  def hash
    [first_name, last_name].hash
  end

  def to_s
    "#{first_name} #{last_name}"
  end
end
