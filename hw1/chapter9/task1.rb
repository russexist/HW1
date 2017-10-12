def calc_age(seconds)
  now = Time.new.to_i
  birthday = Time.mktime(1995, 07, 25).to_i
  different = now - birthday
  if now - birthday == 1_000_000_000
    puts 'Поздравляю! Вам исполнилось один миллиард секунд!'
  elsif now - birthday > 1_000_000_000
    puts "Вам уже исполнилось один миллиард секунд #{(different - 1_000_000_000)/24/60/60} дней назад"
  else
    puts "Вам исполнится один миллиард секунд через #{(seconds - different)/24/60/60} дней"
  end
end

calc_age(1000000000)
