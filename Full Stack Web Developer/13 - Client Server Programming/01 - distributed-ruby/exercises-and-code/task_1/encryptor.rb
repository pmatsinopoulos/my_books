# File: encryptor.rb
#
class Encryptor
  def encrypt (input)
    input.chars.map { |c| (c.ord + 1).chr }.join
  end

  def decrypt(input)
    input.chars.map { |c| (c.ord - 1).chr }.join
  end
end
