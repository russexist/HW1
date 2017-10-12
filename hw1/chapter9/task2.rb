puts 'В каком году Вы родились? (от 1 до 2017)'
year = gets.chomp.to_i
puts 'В каком месяце Вы родились? (от 1 до 12)'
month  = gets.chomp.to_i
puts 'Какого дня Вы родились? (от 1 до 31)'
day  = gets.chomp.to_i
years_now = ((Time.now - Time.mktime(year, month, day))/365/24/60/60).to_i

years_now.times {puts 'ХЛОП!'}

case years_now % 10
when 1
  str_end = 'год'
when 2, 3, 4
  str_end = 'года'
else
  str_end = 'лет'
end

puts "Сейчас Вам #{years_now} #{str_end}."
