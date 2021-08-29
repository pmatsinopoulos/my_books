# File: Logger-1.rb
#
require 'logger'

logger = Logger.new('division.log')

while true
  print 'Give me the dividend (enter nothing to terminate): '
  dividend = gets.chomp
  break if dividend.empty?

  dividend = dividend.to_i
  logger.info "Dividend given: #{dividend}"

  print 'Give me the divisor (enter nothing to terminate: '
  divisor = gets.chomp
  break if divisor.empty?

  divisor = divisor.to_i
  logger.info "Divisor given: #{divisor}"

  begin
    puts "Division of #{dividend} by #{divisor} results to: #{dividend / divisor}"
  rescue => ex
    error_message = "You didn't give correct numbers: error message: #{ex.message}"
    puts error_message
    logger.error error_message
  end
end
