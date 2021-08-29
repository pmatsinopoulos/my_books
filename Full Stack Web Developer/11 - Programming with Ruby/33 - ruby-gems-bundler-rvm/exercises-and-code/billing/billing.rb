# File: billing.rb
#
require 'tcb_letter_spacing'

formatter = TcbLetterSpacing::Formatter.new('awesome')
puts formatter.format
