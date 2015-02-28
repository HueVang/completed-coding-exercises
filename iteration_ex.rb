#Print out all the factors for each of the numbers 1 through 100.

(1..100).each do |num|
i = 1
arr = []
while i <= num
	if (num % i) == 0
		arr << i
    i += 1
	else
		i += 1
	end
end
  p "#{num} has these factors #{arr}"
end
