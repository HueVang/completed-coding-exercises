#Prints out the values only one time.

class Array
  def self.my_uniq (array)
  
    new_array = []
    array.each do |element|
      new_array << element unless new_array.include?(element)
    end
    new_array
  end
end


p Array.my_uniq([1, 2, 2, 3, 3, 3, 3, 4, 5, 6])
