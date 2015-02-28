# Rewrite your Table of Contents program (from the chapter on methods). Start the program with an array holding all of the information for your Table of Contents (chapter names, page numbers, etc.). Then print out the information from the array in a beautifully formatted Table of Contents.

array = ['Table of Contents', 'Chapter 1: New', 'Chapter 2: Ideas', 'Chapter 3: Make', 'Chapter 4: The Best', 'Chapter 5: Of Life', 'Page 10', 'Page 21', 'Page 35', 'Page 52', 'Page 75']

lineWidth = 50

puts array[0].center(lineWidth)
puts array[1].ljust(lineWidth / 2) + array[6].rjust(lineWidth / 2)
puts array[2].ljust(lineWidth / 2) + array[7].rjust(lineWidth / 2)
puts array[3].ljust(lineWidth / 2) + array[8].rjust(lineWidth / 2)
puts array[4].ljust(lineWidth / 2) + array[9].rjust(lineWidth / 2)
puts array[5].ljust(lineWidth / 2) + array[10].rjust(lineWidth / 2)
