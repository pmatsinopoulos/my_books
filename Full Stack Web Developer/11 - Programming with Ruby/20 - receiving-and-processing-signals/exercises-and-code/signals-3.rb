# File: signals-3.rb
#
while true
  begin
    sleep 1
  rescue SignalException => ex
    puts "New Signal Exception Rescued"
    puts ex.inspect
  end
end
