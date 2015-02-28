#A cleaner bubble sort function. Does the same thing as b_sort1. 

def bubble_sort(arr)
  sorted = false
	until sorted
		sorted = true
    (arr.count - 1).times do |idx|
			if arr[idx] > arr[idx + 1]
				arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx]
			  sorted = false
			end
		end
	end

  arr
end

#[5, 4, 3, 2, 1]

#array = [4, 5, 6, 7]
#array[0], array[3] = array[3], array[0]
#array # => [7, 5, 6, 4]
