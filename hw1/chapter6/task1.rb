amt = 99 #amount of bottle
bottle = ''
# решение используя if
while amt != 0
  bottle =
    if amt % 10 == 9 || amt % 10 == 8 || amt % 10 == 7 || amt % 10 == 7 || amt % 10 == 6 || amt % 10 == 5 || amt % 10 == 0
      'бутылок'
    elsif amt % 10 == 4 || amt % 10 == 3 || amt % 10 == 2
      'бутылки'
    else
      'бутылка'
    end
  bottle = 'бутылок' if amt < 15 && amt > 6
  puts "#{amt} #{bottle} пива на стене"
  puts "#{amt} #{bottle} пива!"
  puts "Возьми одну, пусти по кругу"
  amt -= 1
  bottle =
    if amt % 10 == 9 || amt % 10 == 8 || amt % 10 == 7 || amt % 10 == 7 || amt % 10 == 6 || amt % 10 == 5 || amt % 10 == 0
      'бутылок'
    elsif amt % 10 == 4 || amt % 10 == 3 || amt % 10 == 2
      'бутылки'
    else
      'бутылка'
    end
  bottle = 'бутылок' if amt < 15 && amt > 6
  puts "#{amt} #{bottle} пива на стене!"
  puts '--------------------------------'
  puts "Нет бутылок пива на стене!\nНет бутылок пива!\nПойди в магазин и купи ещё." if amt == 0
end
=begin
# решение используя case
while amt != 0
  bottle =
    case amt % 10
    when 9, 8, 7, 6, 5, 0
      'бутылок'
    when 4, 3, 2
      'бутылки'
    else
      'бутылка'
    end
  bottle = 'бутылок' if amt < 15 && amt > 6
  puts "#{amt} #{bottle} пива на стене"
  puts "#{amt} #{bottle} пива!"
  puts "Возьми одну, пусти по кругу"
  amt -= 1
  bottle =
    case amt % 10
    when 9, 8, 7, 6, 5, 0
      'бутылок'
    when 4, 3, 2
      'бутылки'
    else
      'бутылка'
    end
  bottle = 'бутылок' if amt < 15 && amt > 6
  puts "#{amt} #{bottle} пива на стене!"
  puts '--------------------------------'
  puts "Нет бутылок пива на стене!\nНет бутылок пива!\nПойди в магазин и купи ещё." if amt == 0
end
=end
