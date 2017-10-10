arr = ['Content', 'Chapter 1: Numbers', 'Chapter 2: Letters', 'Chapter 3: Variables', 'page 1', 'page 72', 'page 118']
lineWidth = 45
puts arr[0].center(lineWidth)
puts arr[1].ljust(lineWidth/2) + arr[4].rjust(lineWidth/2)
puts arr[2].ljust(lineWidth/2) + arr[5].rjust(lineWidth/2)
puts arr[3].ljust(lineWidth/2) + arr[6].rjust(lineWidth/2)

#or --------------------------------------------
def output head, content, line_width
  puts head.center(line_width)
  content.each { |str| puts str[0].ljust(line_width/2) + str[1].rjust(line_width/2)}
end
output('Content', [['Chapter 1: Numbers', 'page 1'], ['Chapter 2: Letters', 'page 72'], ['Chapter 3: Variables', 'page 118']], 45)
