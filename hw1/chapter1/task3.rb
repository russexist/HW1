puts 'My age in seconds is ' + (22 * 365 * 24 * 60 * 60).to_s

#or
puts '------------------------ or'
age = 22 #your age
days = 365 #year have 365 days
hours = 24 #day have 24 hours
minutes = 60 #houre have 60 minutes
seconds = 60 #minute have 60 seconds
puts "My age in seconds is #{age * days * hours * minutes * seconds}!"

#or
puts '------------------------ or'
puts 'Enter your age'
age2 = gets.chomp.to_i
days = 365 #year have 365 days
hours = 24 #day have 24 hours
minutes = 60 #houre have 60 minutes
seconds = 60 #minute have 60 seconds
puts "Your age #{age2} years and this is #{age2 * days * hours * minutes * seconds} seconds!"
