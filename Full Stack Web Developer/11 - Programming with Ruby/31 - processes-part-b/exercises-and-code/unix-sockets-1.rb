# File: unix-sockets-1.rb
#
require 'socket'

child_socket, parent_socket = Socket.pair(:UNIX, :DGRAM, 0)
# child_socket will be used by the child process
# parent_socket will be used by the parent process

maxlen = 100

fork do
  parent_socket.close # child process does not need the parent socket
  words = [
      'blubber',
      'discombobulated',
      'doodle',
      'doozy',
      'feeble',
      'finagle',
      'gargoyle',
      'goggles',
      'haphazard',
      'hogwash',
      'pompous',
      'ramshackle',
      'squelch'
  ]

  while true
    conversion_command = child_socket.recv(maxlen)
    one_word = words.sample(1)[0]
    case conversion_command
      when 'upcase'
        one_word = one_word.upcase
      when 'spaced-chars'
        one_word = one_word.gsub(/(?<char>.)/, '\k<char> ').strip # A word like "foo" becomes "f o o"
      when 'terminate'
        child_socket.send('bye', 0)
        child_socket.close
        exit # This will end the child
      else
        nil # We will not do anything to the word chosen. We will just send that over
    end
    child_socket.send(one_word, 0)
  end
end

child_socket.close

answer = ''
while answer != 'terminate'
  print 'Give me the command to send to client process (upcase, spaced-chars, terminate): '
  answer = gets.chomp.downcase

  parent_socket.send(answer, 0) # send the command to child process

  word_received = parent_socket.recv(maxlen) # receive the answer back

  puts word_received # print the answer
end

puts "Parent terminates!"
