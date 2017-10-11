puts 'Введите начальный год'
f_year = gets.chomp.to_i #firstYear
puts 'Введте конечный год'
s_year = gets.chomp.to_i #secondYear

(f_year..s_year).each do |year|
  if year % 4 == 0 && year % 100 == 0 && year % 400 == 0
    puts "#{year} - высокосный год"
  elsif year % 4 == 0 && year % 100 == 0
    puts "#{year} - HE высокосный год"
  elsif year % 4  == 0
    puts "#{year} - высокосный год"
  else
    puts "#{year} - HE высокосный год"
  end
end
