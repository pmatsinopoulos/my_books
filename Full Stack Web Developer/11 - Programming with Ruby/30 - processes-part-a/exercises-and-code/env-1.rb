# File: env-1.rb
#
puts ENV.keys.map { |k| "#{k} = #{ENV[k]}" }.join("\n")
