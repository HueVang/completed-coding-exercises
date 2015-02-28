def ordered_vowel_words(str)
  return str if ordered_vowel_word?(str)
  return ""
end

def ordered_vowel_word?(word)
	char_order = []
  word.each_char do |char|
		char_order << char if char == "a" || char == "e" || char == "i" || char == "o" || char == "u"
	end
	
i = 0
	while i < (char_order.length - 1)
		if char_order[i] > char_order[i+1]
			return false
		else
			i += 1	
		end
	end
	return true
end
