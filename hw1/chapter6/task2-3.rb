require 'active_support/all' #установил и подключил библиотеку чтобы можно было использовать русский язык
puts 'Скажите что-то бабуле'
answer = ''
while answer != 'ПОКА ПОКА ПОКА'
  answer = gets.chomp
  if answer == 'ПОКА ПОКА ПОКА'
    puts 'ПОКА, ВНУЧЕК!'
  elsif answer == answer.mb_chars.upcase
    puts "НЕТ, НИ РАЗУ С #{rand(1930..1951)} ГОДА!"
  else
    puts 'АСЬ?! ГОВОРИ ГРОМЧЕ, ВНУЧЕК!'
  end
end
