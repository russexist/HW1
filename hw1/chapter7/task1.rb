arr = []
puts 'Ведите нужное количество слов или Enter на пустой строке для вывода'
arr.push gets.chomp while arr.last != ''
puts arr.sort
