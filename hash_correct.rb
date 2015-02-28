def hash_correct(a)

values = a.values
correct_hash = {}
idx = 0

while idx < a.length
  word = values[idx]
  correct_hash = correct_hash.merge(word[0].to_sym => values[idx])
	idx += 1
end

# NOTE, this returns the hash, but it DOES NOT print it out to the console.
# If you want to print it out, you must use 'p'.
  return correct_hash

end


puts ('hash_correct({ :a => "banana", :b => "cabbage", :c => "dental_floss", :d => "eel_sushi" }) == {:b => "banana", :c => "cabbage", :d => "dental_floss", :e => "eel_sushi"}: ' + (hash_correct({ :a => "banana", :b => "cabbage", :c => "dental_floss", :d => "eel_sushi" }) == {:b => "banana", :c => "cabbage", :d => "dental_floss", :e => "eel_sushi"}).to_s)

wrong_hash = { :a => "banana", :b => "cabbage", :c => "dental_floss", :d => "eel_sushi" }
hash_correct(wrong_hash)
