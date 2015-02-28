#Simple function that reverses a string.

def reverse(string)
  newbie = []

  idx = string.length - 1
  while idx >=0
    puts(newbie.unshift(string.(idx)))
    idx = idx - 1
  end
end

reverse("abc")
