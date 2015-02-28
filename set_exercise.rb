#function that adds an element to a hash.
def set_add_el(a, b)
  a = a.merge(b)
  p a
end

set_add_el({:x => true}, :x => true)

#Function that removes an element from a hash.
def set_remove_el(a, b)
  a.delete(b)	
  p a
end

set_remove_el({:x => true}, :x)

#Function that shows the keys of a hash.
def set_list_els(a)
  p a.keys
end

set_list_els({:x => true, :y => true})
  
 #Function that shows the 'members'/'keys' of a hash.  
def set_member?(a, b)
	p a.has_key?(b)
end
  
set_member?({:x => true}, :x) # => true

#Function that merges two hashes.
def set_union(a, b)
	p a.merge(b)
end

set_union({:x => true}, {:y => true}) # => {:x => true, :y => true}

#See if two hashes have the same keys.
def set_intersection(a, b)
  a.each do |x, y|
    p b.has_key?(x)
  end
end

set_intersection({"Hahah" => "eazy", "No" => "K"}, {"Hahah" => "eazy", "Newo" => "K"})

#Returns all elements of the first hash that are not in the second hash.
def set_minus(a, b)
a.each do |x, y|
	if b.has_key?(x) != true
		p x
	end
end
end

set_minus({"eazy" => 1, "okay" => 45, "gster" => 3}, {"willow" => 2, "gster" => 3, "fine" => 7})
