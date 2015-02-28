# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.


def dasherize_number(num)
 numstring = num.to_s
 numlength = numstring.length

 idx = 0
string = ''
while idx < numlength

digit = numstring[idx].to_i
	if (idx > 0)
		prev_digit = numstring[idx - 1].to_i
		if ((prev_digit % 2) != 0) || ((digit % 2) != 0)
			string += '-'
		end
	end
	
	string += numstring[idx].to_s	
	idx += 1
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
