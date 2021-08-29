# File: task-b.rb
#
require 'socket'
sockets = {}
MAXLEN = 100
words = []
need_to_exit = false

module Converter
  def self.convert(word)
    word.upcase.gsub(/(?<char>.)/, '\k<char> ').strip # A word like "foo" becomes "F O O"
  end
end

def read_child_answer(sockets, pid, words)
  # I need to read the answer
  parent = sockets[pid][1]
  word_to_add =  parent.recv(MAXLEN)
  words << word_to_add
  puts "child with pid: #{pid} finished."
  parent.close
  sockets.delete(pid)
end

trap('SIGCHLD') do
  begin
    while pid = Process.wait( -1, Process::WNOHANG)
      # I need to read the answer
      read_child_answer sockets, pid, words
    end
  rescue Errno::ECHILD
    if need_to_exit
      # Since this variable is true, the user has given exit.
      # We need to print the words and exit the script completely.
      p words
      exit
    end
  end
end

answer = ''
while answer != 'exit'
  print 'Give me a word to work on (or exit to terminate program): '
  answer = gets.chomp.downcase
  unless answer.empty? || answer == 'exit'
    child, parent = Socket.pair(:UNIX, :DGRAM, 0)
    child_id = fork do
      parent.close # child process only needs the client_socket

      word_to_convert = child.recv(MAXLEN)
      sleep((10..20).to_a.sample) # simulate a long running job, by sleeping a random amount of seconds, between 10 to 20.
      returned_word = Converter.convert(word_to_convert)
      child.send(returned_word, 0)
      child.close
      exit
    end
    child.close
    parent.send(answer, 0)
    sockets[child_id] = [child, parent]
  end
end


# User has given 'exit', let's wait for any child that has not finished yet.
# We set this variable to true, to tell trap code that if there are not
# any other children, it has to print the words and exit.
need_to_exit = true

sleep unless sockets.empty?
