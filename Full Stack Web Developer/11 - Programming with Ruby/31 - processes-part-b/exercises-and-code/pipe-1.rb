# File: pipe-1.rb
#
reader, writer = IO.pipe

fork do
  reader.close # child process is going to be the writer
               # so, we close the reader channel
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
  20.times do
    one_word = words.sample(1)[0]

    writer.puts one_word

    sleep 1
  end
  writer.close # no more to write
end

writer.close # parent is going to be the reader, not writer.
while message = reader.gets
  $stdout.puts message.upcase
end

reader.close

puts 'Parent process: no more words to read'

