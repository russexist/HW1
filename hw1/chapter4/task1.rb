puts 'What is your name?'
name = gets.chomp
puts 'Please, enter your last nane'
lname = gets.chomp
puts 'Enter your surname'
surname = gets.chomp

puts 'Hello, ' + surname + ' ' + name + ' ' + lname
#or
puts '--------------------'
puts "Hello, #{surname} #{name} #{lname}"
