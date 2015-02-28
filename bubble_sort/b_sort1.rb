#Want everything to be sorted in order.
#[3, 5, 1, 2, 4] 
#Switch higher index with lower index if (idx[x+1] < idx[x])
#Then once you reach the length count, restart.
#Go until the values are all sorted in order.

def bubble_sort(arr)
i = 0

while true
  if arr == arr.sort
    break
  elsif arr[i+1] == nil
     i = 0
  elsif arr[i+1] < arr[i]
		hold = arr[i]
		arr[i] = arr[i+1]
		arr[i+1] = hold
		i += 1
	else
		i += 1
	end
  p arr
end
  p arr
end

bubble_sort([7, 4, 2, 1, 3, 6, 5])
