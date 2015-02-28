# Create a method that takes in an Array of Strings and 
# uses inject to return the concatenation of the strings.


def inject(arr)

go =
arr.inject("") do |accum , words| 

   accum + "#{words} " 
end
return go.strip

end


real = ["hi", "how", "are", "you", "doing?"]
deal = ["eazy", "peazy", "weezy", "baby!"]

p inject(real)
p inject(deal)

puts ('inject(real) == "hi how are you doing?": ' + (inject(real) == "hi how are you doing?").to_s)
puts ('inject(deal) == "eazy peazy weezy baby!": ' + (inject(deal) == "eazy peazy weezy baby!").to_s)
