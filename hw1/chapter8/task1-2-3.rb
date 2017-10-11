def englishNumber number
  if number < 0
    return 'Пожалуйста, введите неотрицательное число.'
  end
  if number == 0
    return 'zero'
  end

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
    decallion = englishNumber write
    numString = numString + decallion + ' decallion'

    if left > 0
      numString = numString + ' and '
    end
  end

  write = left / 1_000_000_000_000_000_000_000_000_000_000
  left = left - write * 1_000_000_000_000_000_000_000_000_000_000

  if write > 0
    nonallion = englishNumber write
    numString = numString + nonallion + ' nonallion'

    if left > 0
      numString = numString + ' and '
    end
  end

  write = left / 1_000_000_000_000_000_000_000_000_000
  left = left - write * 1_000_000_000_000_000_000_000_000_000

  if write > 0
    octallion = englishNumber write
    numString = numString + octallion + ' octallion'

    if left > 0
      numString = numString + ' and '
    end
  end

  write = left / 1_000_000_000_000_000_000_000_000
  left = left - write * 1_000_000_000_000_000_000_000_000

  if write > 0
    septillion = englishNumber write
    numString = numString + septillion + ' septillion'

    if left > 0
      numString = numString + ' and '
    end
  end

  write = left / 1_000_000_000_000_000_000_000
  left = left - write * 1_000_000_000_000_000_000_000

  if write > 0
    sextillon = englishNumber write
    numString = numString + sextillon + ' sextillon'

    if left > 0
      numString = numString + ' and '
    end
  end

  write = left / 1_000_000_000_000_000_000
  left = left - write * 1_000_000_000_000_000_000

  if write > 0
    quintillion = englishNumber write
    numString = numString + quintillion + ' quintillion'

    if left > 0
      numString = numString + ' and '
    end
  end

  write = left / 1_000_000_000_000_000
  left = left - write * 1_000_000_000_000_000

  if write > 0
    quadrillion = englishNumber write
    numString = numString + quadrillion + ' quadrillion'

    if left > 0
      numString = numString + ' and '
    end
  end

  write = left / 1_000_000_000_000
  left = left - write *1_000_000_000_000

  if write > 0
    trillion = englishNumber write
    numString = numString + trillion + ' trillion'

    if left > 0
      numString = numString + ' and '
    end
  end

  write = left / 1_000_000_000
  left = left - write * 1_000_000_000

  if write > 0
    billion = englishNumber write
    numString = numString + billion + ' billion'

    if left > 0
      numString = numString + ' and '
    end
  end

  write = left / 1_000_000
  left = left - write * 1_000_000

  if write > 0
    million = englishNumber write
    numString = numString + million + ' million'

    if left > 0
      numString = numString + ' and '
    end
  end


  write = left / 1000
  left = left - write * 1000

  if write > 0
    thousand = englishNumber write
    numString = numString + thousand + ' thousand'

    if left > 0
      numString = numString + ' and '
    end
  end

  write = left/100
  left  = left - write*100

  if write > 0

    hundred  = englishNumber write
    numString = numString + hundred + ' hundred'

    if left > 0
      numString = numString + ' and '
    end
  end

  write = left/10
  left  = left - write*10

  if write > 0
    if ((write == 1) and (left > 0))
      numString = numString + teenagers[left-1]
      left = 0
    else
      numString = numString + tensPlace[write-1]
    end

    if left > 0
      numString = numString + ' and '
    end
  end

  write = left
  left  = 0

  if write > 0
    numString = numString + onesPlace[write-1]
  end

  numString
end

puts 'Введите ЛЮБОЕ неотрицательное число'
puts englishNumber gets.chomp.to_i
