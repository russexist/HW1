def english_number number
  return 'Пожалуйста, введите неотрицательное число.' if number < 0
  return 'zero' if number == 0

  numString = ''

  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']

  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']

  left = number
  write = left / 1_000_000_000_000_000_000_000_000_000_000_000
  left = left - write * 1_000_000_000_000_000_000_000_000_000_000_000

  if write > 0
    decallion = english_number(write)
    numString = numString + decallion + ' decallion'

    numString = numString + ' and ' if left > 0
  end

  write = left / 1_000_000_000_000_000_000_000_000_000_000
  left = left - write * 1_000_000_000_000_000_000_000_000_000_000

  if write > 0
    nonallion = english_number(write)
    numString = numString + nonallion + ' nonallion'

    numString = numString + ' and ' if left > 0
  end

  write = left / 1_000_000_000_000_000_000_000_000_000
  left = left - write * 1_000_000_000_000_000_000_000_000_000

  if write > 0
    octallion = english_number(write)
    numString = numString + octallion + ' octallion'

    numString = numString + ' and ' if left > 0
  end

  write = left / 1_000_000_000_000_000_000_000_000
  left = left - write * 1_000_000_000_000_000_000_000_000

  if write > 0
    septillion = english_number(write)
    numString = numString + septillion + ' septillion'

    numString = numString + ' and ' if left > 0
  end

  write = left / 1_000_000_000_000_000_000_000
  left = left - write * 1_000_000_000_000_000_000_000

  if write > 0
    sextillon = english_number(write)
    numString = numString + sextillon + ' sextillon'

    numString = numString + ' and ' if left > 0
  end

  write = left / 1_000_000_000_000_000_000
  left = left - write * 1_000_000_000_000_000_000

  if write > 0
    quintillion = english_number(write)
    numString = numString + quintillion + ' quintillion'

    numString = numString + ' and ' if left > 0
  end

  write = left / 1_000_000_000_000_000
  left = left - write * 1_000_000_000_000_000

  if write > 0
    quadrillion = english_number(write)
    numString = numString + quadrillion + ' quadrillion'

    numString = numString + ' and ' if left > 0
  end

  write = left / 1_000_000_000_000
  left = left - write *1_000_000_000_000

  if write > 0
    trillion = english_number(write)
    numString = numString + trillion + ' trillion'

    numString = numString + ' and ' if left > 0
  end

  write = left / 1_000_000_000
  left = left - write * 1_000_000_000

  if write > 0
    billion = english_number(write)
    numString = numString + billion + ' billion'

    numString = numString + ' and ' if left > 0
  end

  write = left / 1_000_000
  left = left - write * 1_000_000

  if write > 0
    million = english_number(write)
    numString = numString + million + ' million'

    numString = numString + ' and ' if left > 0
  end


  write = left / 1000
  left = left - write * 1000

  if write > 0
    thousand = english_number(write)
    numString = numString + thousand + ' thousand'

    numString = numString + ' and ' if left > 0
  end

  write = left/100
  left  = left - write*100

  if write > 0

    hundred  = english_number(write)
    numString = numString + hundred + ' hundred'

    numString = numString + ' and ' if left > 0
  end

  write = left/10
  left  = left - write*10

  if write > 0
    if (write == 1) && (left > 0)
      numString = numString + teenagers[left-1]
      left = 0
    else
      numString = numString + tensPlace[write-1]
    end

    numString = numString + ' and ' if left > 0
  end

  write = left
  left  = 0

  numString = numString + onesPlace[write-1] if write > 0

  numString
end

puts 'Введите ЛЮБОЕ неотрицательное число'
puts english_number gets.chomp.to_i
