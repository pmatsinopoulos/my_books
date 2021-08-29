# File: Rakefile-rules-2.rb
#
rule '.lol' do |t|
  puts "#{t.name}"
end

rule(/\AABC.+z\z/ => '.lol') do |t|
  puts "#{t.source}/#{t.name}"
end
