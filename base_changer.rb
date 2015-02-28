# In this exercise, I'd like you to write a method num_to_s(num, base), which will convert a number to a string in a different base. 
# num_to_s(123, 10) == "123" and num_to_s(4, 2) == 100

#  8 in base 2 = 1000 = 2^3*1 + 2^2*0 + 2^1*0 + 2^0*0

#  6 in base 2 = 110 = 2^2*1 + 2^1*1 + 2^0*0

#  10 in base 3 = 101 = 1*3^2 + 0*3^1 + 1*3^0
# Create a Hash where the keys are digit numbers and the values are the digit strings 
# (for bases > 10 this will involve some characters; hex digits go up to 'f'). 

def num_to_s(num, base)
  #created a hash where keys are digit numbers and the values are the digit strings.
  digit_to_s = {0 => "0", 1 => "1", 2 => "2", 3 => "3", 4 => "4", 5 => "5", 6 => "6", 7 => "7", 8 => "8", 9 => "9", 10 => "a", 11 => "b", 12 => "c", 13 => "d", 14 => "e", 15 => "f"}
  #created variables for a - f to use their values in calculating the base.
  
  #this will be the part of the function that does the calculations.
  idx = -1
  hex = 16
  digit_string = ""
  while idx < hex
    if ((num / base**hex)) == 0
      hex -= 1
    else
      digit_string = digit_string + digit_to_s[((num / base**hex) % base)]
      hex -= 1
    end
  end
  
  return digit_string
end
# Should all print true.
puts ('num_to_s(4, 2) == 100: ' + (num_to_s(4, 2) == 100.to_s).to_s)
puts ('num_to_s(545, 16) == 221: ' + (num_to_s(545, 16) == 221.to_s).to_s)
puts ('num_to_s(1001, 6) == 4345: ' + (num_to_s(1001, 6) == 4345.to_s).to_s)
puts ('num_to_s(4999, 14) == 1b71: ' + (num_to_s(4999, 14) == "1b71").to_s) #NOTE cannot use 1b71.to_s because of the letter b.
puts ('num_to_s(1232, 16) == 4d0: ' + (num_to_s(1232, 16) == "4d0").to_s) #NOTE: cannot use 4d0.to_s because of the letter 'd'.
