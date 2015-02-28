def morse_encode(str)
sentence = []
	str.split.each do |word|
    sentence<< (morse_encode_word(word) + " ")
	end
  
  result = sentence.join("")
  return result.strip
end

def morse_encode_word(word)

morse_code = {"a" => ".-", "b" => "-...", "c" => "-.-.", "d" => "-..", "e" => ".", 
"f" => "..-.", "g" => "--.", "h" => "....", "i" => "..", "j" => ".---",
 "k" => "-.-", "l" => ".-..", "m" => "--", "n" => "-.", "o" => "---",
 "p" => ".--.", "q" => "--.-", "r" => ".-.", "s" => "...", "t" => "-",
 "u" => "..-", "v" => "...-", "w" => ".--", "x" => "-..-", "y" => "-.--",
 "z" => "--.."}

	letters = word.split("")
	code = ""
	letters.each do |char|
			code<< (morse_code[char] + " ")
	end
  
	return code
end
