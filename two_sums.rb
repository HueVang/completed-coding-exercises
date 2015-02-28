# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.

def two_sum(nums)
  
  array = []
  i = 0
  x = 1
  
  while (i < nums.length) 
    
    if nums[x] == nil
      x = i + 2
      i += 1
    elsif ((nums[i] + nums[x]) != 0)
      x += 1
    elsif ((nums[i] + nums[x]) == 0) && (nums[x] != nil)
      return (array = [i, x])
    end
  end
  
  return nil
  
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'two_sum([1, 3, 5, -3]) == [1, 3]: ' + (two_sum([1, 3, 5, -3]) == [1, 3]).to_s
)
puts(
  'two_sum([1, 3, 5]) == nil: ' + (two_sum([1, 3, 5]) == nil).to_s
)
