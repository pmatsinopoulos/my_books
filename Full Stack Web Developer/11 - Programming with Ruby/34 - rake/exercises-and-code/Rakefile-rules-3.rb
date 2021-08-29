# File: Rakefile-rules-3.rb
#
rule '.lol' do |t|
  puts "#{t.name}"
  File.write(t.name, "This is file #{t.name}")
end

rule(/\AABC.+z\z/ => '.lol') do |t|
  puts "#{t.source}/#{t.name}"
end
