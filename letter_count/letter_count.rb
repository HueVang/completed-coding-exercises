#This is a long and ugly function.
#def letter_count(str)
#hash = {}
#i = 0
#	while i < str.length
#		if str[i] == " "
#			i += 1
#		elsif hash.has_key?(str[i])
#			hash[str[i]] += 1
#			i += 1
#		else
#			hash[str[i]] = 1
#		 	i += 1
#		end
#	end
#	return hash
#end

#This is a short and clean function that does exactly the same thing as the one above.
def letter_count(str)
counts = Hash.new(0)

  str.each_char do |char|
	  counts[char] += 1 unless char == " "
end
	counts
end
