def no_repeats(year_start, year_end)
	no_repeat = []
	(year_start..year_end).each do |year|
		no_repeat << year if no_repeat?(year)
	end
	
	no_repeat
end

def no_repeat?(year)
	char_seen = []
	year.to_s.each_char do |char|
		return false if char_seen.include?(char) 
		char_seen << char
	end
	
  return true
end
