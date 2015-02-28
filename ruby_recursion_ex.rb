def append (arr, n)
  return arr if n < 0
  arr << n 
  append(arr, n-1)
end

p append([], 3)

def reverse_append (arr, n)
  return arr if n < 0 
  reverse_append(arr, n-1)
  arr << n
end

p reverse_append([], 3)
