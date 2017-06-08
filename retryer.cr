require "./stuff/*"

dev = 0
2.times_with_retry do
  puts 2/dev
end

dev += 1
2.times_with_retry do
  puts 2/dev
end
