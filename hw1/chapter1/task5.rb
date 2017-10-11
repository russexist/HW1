puts 'You are ' + (943000000/365/24/60/60).to_s + ' years old'

#or
puts "You are #{943000000/365/24/60/60} years old"

#or
sec = 943000000
days = 365 #year have 365 days
hours = 24 #day have 24 hours
minutes = 60 #houre have 60 minutes
seconds = 60 #minute have 60 seconds
puts "You are #{sec/days/hours/minutes/seconds} years old"
