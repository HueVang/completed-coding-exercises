#Returns all leap years between two specified dates.

puts 'Starting year?'
year1 = gets.chomp.to_i

puts 'Ending year?'
year2 = gets.chomp.to_i

puts 'Here are your leap years:'

while year1 <= year2
  if (year1 % 4) == 0 && (year1 % 100) != 0
    puts year1
    year1 = year1 + 1
  elsif (year1 % 4) == 0 && (year1 % 400) == 0
    puts year1
    year1 = year1 + 1
  else
    year1 = year1 + 1
  end
end
