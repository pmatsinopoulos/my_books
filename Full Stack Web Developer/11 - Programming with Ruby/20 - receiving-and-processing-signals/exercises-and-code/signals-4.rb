# File: signals-4.rb
#
info_message = 'I am running'

Signal.trap('ABRT') do
  puts 'ABRT signaled trapped! But I will not ABORT even if that signal wants me!'
  info_message = 'I am still running'
end

while true
  puts info_message
  sleep 1
end
