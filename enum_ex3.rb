# Write a method that takes an array of integers and returns an array 
# with the array elements multiplied by two

def multi (array)
  p (array.map {|x| x * 2})
end

five = [1, 2, 3, 4, 5]
cool = [5, 6, 7, 8, 9] 

multi(five)
multi(cool)
