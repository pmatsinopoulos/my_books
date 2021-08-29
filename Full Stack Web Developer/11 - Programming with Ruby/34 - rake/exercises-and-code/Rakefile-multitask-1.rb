# File: Rakefile-multitask-1.rb
#
multitask random_chars: [:random_lower, :random_upper] do
  puts "Both parallel tasks have been executed"
end

task :random_lower do
  puts "Random lower starts..."
  5.times do
    sleep (1..3).to_a.sample
    puts ('a'..'z').to_a.sample
  end
  puts "Random lower ends"
end

task :random_upper do
  puts "Random upper starts..."
  5.times do
    sleep (1..3).to_a.sample
    puts ('A'..'Z').to_a.sample
  end
  puts "Random upper ends"
end

task default: [:random_chars]
