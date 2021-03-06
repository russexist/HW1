def english_number(number)
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
    write = left / 1_000_000
  left = left - write * 1_000_000

  if write > 0
    million = english_number(write)
    numString = numString + million + ' million'

    numString = numString + ' ' if left > 0
  end


  write = left / 1000
  left = left - write * 1000

  if write > 0
    thousand = english_number(write)
    numString = numString + thousand + ' thousand'

    numString = numString + ' ' if left > 0
  end

  write = left/100
  left  = left - write*100

  if write > 0

    hundred  = english_number(write)
    numString = numString + hundred + ' hundred'

    numString = numString + ' ' if left > 0
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

    numString = numString + '-' if left > 0
  end

  write = left
  left  = 0

  numString = numString + onesPlace[write-1] if write > 0

  numString
end

amount_bottle = 9999
amount = amount_bottle

def bottles_end(amount)
  if amount == 1
    "#{english_number(amount)} bottle"
  elsif amount > 1
    "#{english_number(amount)} bottles"
  else
    'No more bottles'
  end
end

while amount != 0
  puts "#{bottles_end(amount).capitalize} of beer on the wall, #{bottles_end(amount)} of beer"
  puts "If one of those bottles should happen to fall, #{bottles_end(amount - 1)} of beer"
  amount -= 1
  puts 'And now there are no bottles.' if amount == 0
end
