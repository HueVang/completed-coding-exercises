# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.


def dasherize_number(num)

numx = num.to_s
length = numx.length

idx = 0

if numx[1] == nil
	return numx[0]
end


while idx < length
string = ''
	if numx[idx] == 0
		string = string + 0
		idx += 1
	elsif num[idx] == nil
		return string	
	elsif (numx[0] % 2) == 0
		string = string + numx[0]
		idx += 1
	elsif (numx[0] % 2 != 0)
		string = string + numx[0] + '-'
		idx += 1
	elsif ((numx[idx] % 2) != 0) && (((numx[idx - 1] % 2) == 0) && (numx[idx + 1] % 2) == 0)
		string = string + '-' + numx[idx] + '-'
		idx += 1
	elsif ((numx[idx] % 2) != 0) && (((numx[idx - 1] % 2) == 0) && (numx[idx + 1] % 2) != 0)
		string = string + '-' + numx[idx]
		idx += 1
	elsif ((numx[idx] % 2) != 0) && (((numx[idx - 1] % 2) != 0) && (numx[idx + 1] % 2) == 0)
		string = string + numx[idx] + '-'
		idx += 1
	elsif ((numx[idx] % 2) != 0) && (((numx[idx - 1] % 2) != 0) && (numx[idx + 1] % 2) != 0)
		string = '-' + numx[idx] + '-'
		idx += 1
	else
		string = string + numx[idx]
		idx += 1
	end	
end

return string

end


puts(
  dasherize_number(203))
puts(
  dasherize_number(303))
puts(
  dasherize_number(333))

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'dasherize_number(203) == "20-3": ' +
  (dasherize_number(203) == '20-3').to_s
)
puts(
  'dasherize_number(303) == "3-0-3": ' +
  (dasherize_number(303) == '3-0-3').to_s
)
puts(
  'dasherize_number(333) == "3-3-3": ' +
  (dasherize_number(333) == '3-3-3').to_s
)
puts(
  'dasherize_number(3223) == "3-22-3": ' +
  (dasherize_number(3223) == '3-22-3').to_s)
