#Deaf grandma exercise.
#Asks user for input, then goes to the while loop until you input BYE 3 times in a row.

puts 'HEY SONNY ITS YO GRANDMA!'
bye = 0
words = gets.chomp

while bye < 2
  if words == 'BYE'
    words = gets.chomp
    bye = bye + 1
  elsif words == words.upcase
    puts 'NO, NOT SINCE ' + rand(1930..1950).to_s + '!'
    words = gets.chomp
    bye = 0
  else
    puts 'WHAT? SAY IT AGAIN SONNY!'
    words = gets.chomp
    bye = 0
  end
end

puts 'OH OKAY. GOODBYE DEARY!'
