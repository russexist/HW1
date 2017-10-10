amt = 99 #amount of bottle
bottle = ''
# ---------------------------------------- решение используя if
while amt != 0
  if amt % 10 == 9 or amt % 10 == 8 or amt % 10 == 7 or amt % 10 == 7 or amt % 10 == 6 or amt % 10 == 5 or amt % 10 == 0
    bottle = 'бутылок'
  elsif amt % 10 == 4 or amt % 10 == 3 or amt % 10 == 2
    bottle = 'бутылки'
  else
    bottle = 'бутылка'
  end
  if amt < 15 and amt > 6
    bottle = 'бутылок'
  end
  puts "#{amt} #{bottle} пива на стене"
  puts "#{amt} #{bottle} пива!"
  puts "Возьми одну, пусти по кругу"
  amt -= 1
  if amt % 10 == 9 or amt % 10 == 8 or amt % 10 == 7 or amt % 10 == 7 or amt % 10 == 6 or amt % 10 == 5 or amt % 10 == 0
    bottle = 'бутылок'
  elsif amt % 10 == 4 or amt % 10 == 3 or amt % 10 == 2
    bottle = 'бутылки'
  else
    bottle = 'бутылка'
  end
  if amt < 15 and amt > 6
    bottle = 'бутылок'
  end
  puts "#{amt} #{bottle} пива на стене!"
  puts '--------------------------------'
  if amt == 0
    puts 'Нет бутылок пива на стене!'
    puts 'Нет бутылок пива!'
    puts 'Пойди в магазин и купи ещё '
  end
end

=begin
# ----------------------------------------- решение используя case
while amt != 0
  case amt % 10
    when 9, 8, 7, 6, 5, 0
      bottle = 'бутылок'
    when 4, 3, 2
      bottle = 'бутылки'
    else
      bottle = 'бутылка'
  end
  if amt < 15 and amt > 6
    bottle = 'бутылок'
  end
  puts "#{amt} #{bottle} пива на стене"
  puts "#{amt} #{bottle} пива!"
  puts "Возьми одну, пусти по кругу"
  amt -= 1
  case amt % 10
    when 9, 8, 7, 6, 5, 0
      bottle = 'бутылок'
    when 4, 3, 2
      bottle = 'бутылки'
    else
      bottle = 'бутылка'
  end
  if amt < 15 and amt > 6
    bottle = 'бутылок'
  end
  puts "#{amt} #{bottle} пива на стене!"
  puts '--------------------------------'
  if amt == 0
    puts 'Нет бутылок пива на стене!'
    puts 'Нет бутылок пива!'
    puts 'Пойди в магазин и купи ещё '
  end
end
=end
