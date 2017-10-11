puts 'What is your name?'
name = gets.chomp
puts 'Please, enter your last nane'
l_name = gets.chomp
puts 'Enter your surname'
surname = gets.chomp

puts 'Hello, ' + surname + ' ' + name + ' ' + l_name
#or
puts "Hello, #{surname} #{name} #{l_name}"
