#Function that takes the median of an array of integers.
def median(array)
  arrayx = array.sort
  if (arrayx.count % 2) == 1
    return arrayx[((arrayx.count / 2) + 0.5).to_i]
  else
    half = (arrayx.count / 2)
    return ((arrayx[half] + arrayx[half - 1]) / 2.to_f) #Any of the three values can be '.to_f'
  end
end
    
five = [1, 2, 3, 4, 5]
cool = [5, 6, 7, 8, 9, 10]
last = [4, 6, 2, 87, 3, 1] #[1, 2, 3, 4, 6, 87]
p median(five)
p median(cool)
p median(last)
puts ('median(five) == [3]: ' + (median(five) == 3).to_s)
puts ('median(cool) == [7.5]: ' + (median(cool) == 7.5).to_s)
puts ('median(last) == [3.5]: ' + (median(last) == 3.5).to_s)
