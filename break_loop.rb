while true
  puts 'Input a number greater than 20:'
  number = gets.chomp.to_i
  
  if number > 20
    break
  else
    puts 'That wasn\'t big enough!'
  end
end

puts 'Your big number is ' + number.to_s
