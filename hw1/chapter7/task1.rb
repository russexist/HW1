arr = []
puts 'Ведите нужное количество слов'
while arr.last != ''
  arr.push gets.chomp
end
puts arr.sort
