# [[man1, woman1], [man2, woman2], [man3, woman3]]
# Mix up the men with women, and keep the same array structure.
# Place all men into one array, and women into the other.
# Use the shuffle method to shuffle the names.
# Then just pair them up relative to their indices.
# Then make a new array and push it into an empty one.
# Then end.

def swingers(arr)
  # First we seperate the men from the women into different arrays.
men = []
women = []
i = 0 
while i < arr.length
	men<< arr[i][0]
	women<< arr[i][1]
	i += 1
end
mixed_array = []
  log = []
  # Reset i back to 0.
i = 0
  while i < men.length
    hold = [men[i], women[rand(0..women.length-1)]]
    if arr.include?(hold) || log.include?(hold[0]) || log.include?(hold[1])
      log = []
      mixed_array = []
      i = 0
    else
      mixed_array << hold
      log << hold[0]
      log << hold[1]
      i += 1
    end
end
  p mixed_array
end

swingers([
  ["Clyde", "Bonnie"],
  ["Paris", "Helen"],
  ["Romeo", "Juliet"]
  ["Huey", "Aja"]]
)
