#This program creates an array with words and sorts them in alphabetical order.
#It capitalizes all of the words due to the "capitalize" method attached to the gets.
#For some reason, you can't input the same word twice or else you get stuck in an input command loop.

puts 'Write any word here:'
array = []
word = gets.chomp.capitalize

while word != ''
  array.push word
  word = gets.chomp.capitalize
end

a = 0
b = 1
datpiff = array.length
yolo = []

while datpiff > yolo.length
  array2 = array
  if array2[b] == nil
    yolo.push(array2[a]) 
    array2.delete_at(a)
    a = 0
    b = 1
  elsif array2[a].capitalize < array2[b].capitalize 
    b = b + 1
  elsif array2[a].capitalize > array2[b].capitalize
    a = b
    b = b + 1 
  end
end
  

puts yolo.join(', ')
