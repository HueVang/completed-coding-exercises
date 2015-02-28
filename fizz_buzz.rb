#Simple fizzbuzz function. Could be cleaner.
def fizzbuzz(num)

i = 1

while i <= num
	if ((i % 3) == 0) && ((i % 5) == 0)
		puts 'FizzBuzz'
		i = i + 1
	elsif (i % 5) == 0
		puts 'Buzz'
		i = i + 1
	elsif (i % 3) == 0
		puts 'Fizz'
		i = i + 1
	else
		puts i
		i = i + 1
	end
end

end

fizzbuzz(100)
