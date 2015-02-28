def caesar(string, shift)

  # An alphabet table that places letters with their corresponding ASCII values.
  alphabet = {97 => "a", 98 => "b", 99 => "c", 100 => "d", 101 => "e", 102 => "f", 103 => "g", 104 => "h", 105 => "i", 106 => "j", 107 => "k", 108 => "l", 109 => "m", 110 => "n", 111 => "o", 112 => "p", 113 => "q", 114 => "r", 115 => "s", 116 => "t", 117 => "u", 118 => "v", 119 => "w", 120 => "x", 121 => "y", 122 => "z"}
  
  #This is the new string that will hold the shifted alphabet. Called it 'c_string'.
  c_string = ""
  
  #This is gonna be where the shifting occurs.
  idx = 0
  
  while idx < string.length
    if (string[idx].ord + shift) <= 122
      c_string = c_string << (alphabet[(string[idx].ord + shift)])
      idx += 1
    else
      c_string = c_string << (alphabet[(string[idx].ord + shift - 26)])
      idx += 1
    end
  end
  #Returns the newly made string.
  return c_string
  
end

#some tests
puts caesar("hello", 3)
puts caesar("zayne", 5)
puts ('caesar("hello", 3) == "khoor": ' + (caesar("hello", 3) == "khoor").to_s)
puts ('caesar("zayne", 5) == "efdsj": ' + (caesar("zayne", 5) == "efdsj").to_s)

#caesar("hello", 3) == "khoor"

#puts "a".ord
#puts "b".ord
#puts "h".ord
