# File: streams-1.rb
#
$stdout.print 'How old are you? '
answer = $stdin.gets.chomp
$stdout.puts "Did you say #{answer}?"

$stderr.puts 'Bye!'
