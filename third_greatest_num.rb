# Write a method that takes an array of numbers in. Your method should
# return the third greatest number in the array. You may assume that
# the array has at least three numbers in it.
#

def third_greatest(nums)

array = []
counter = 0
hold = 0
i = 0		
a = 1
	if nums.length < 3 
		return nil
	end
	

		while counter < 3 
			if nums[a] == nil
				counter += 1
				array.push(hold)
				nums[i] = 0
				i = 0
				a = 1
			elsif nums[i] < nums[a]
				hold = nums[a]
				i = a
				a += 1
			elsif nums[i] > nums[a]
				hold = nums[i]
				a += 1
			elsif (nums[i] == nums[a]) 
				a += 1

			end
		end

	return array[2]
			
				

end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'third_greatest([5, 3, 7]) == 3: ' +
  (third_greatest([5, 3, 7]) == 3).to_s
)
puts(
  'third_greatest([5, 3, 7, 4]) == 4: ' +
  (third_greatest([5, 3, 7, 4]) == 4).to_s
)
puts(
  'third_greatest([2, 3, 7, 4]) == 3: ' +
  (third_greatest([2, 3, 7, 4]) == 3).to_s
)
puts(
  'third_greatest([99, 42, 3, 4, 8]) == 8: ' +
  (third_greatest([99, 42, 3, 4, 8]) == 8).to_s
)
puts(
  'third_greatest([20, 31, 12, 13, 200]) == 20: ' +
  (third_greatest([20, 31, 12, 13, 200]) == 20).to_s
)
puts(
  'third_greatest([0, 20]) == nil: ' +
  (third_greatest([0, 20]) == nil).to_s
)
