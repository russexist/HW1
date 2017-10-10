arr = ['Numbers', 'Letters', 'Variables', 'page 1', 'page 72', 'page 118']
lineWidth = 45

puts 'Content'.center(lineWidth)
puts "Chapter 1: #{arr[0]}".ljust(lineWidth/2) + arr[3].rjust(lineWidth/2)
puts "Chapter 2: #{arr[1]}".ljust(lineWidth/2) + arr[4].rjust(lineWidth/2)
puts "Chapter 3: #{arr[2]}".ljust(lineWidth/2) + arr[5].rjust(lineWidth/2)
