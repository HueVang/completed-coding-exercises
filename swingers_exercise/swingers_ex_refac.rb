def swingers(arr)
  
men = arr.each_with_object([]) {|(men, women),arr| arr << men}
women = arr.each_with_object([]) {|(men, women),arr| arr << women}  
  
mixed_array = []
log = []
i = 0
  
  while i < men.length
    hold = [men[i], women[rand(0..women.length-1)]]
    if arr.include?(hold) || log.include?(hold[0]) || log.include?(hold[1])
      log = []
      mixed_array = []
      i = 0
    else
      mixed_array << hold
      log << hold[0]
      log << hold[1]
      i += 1
    end
end
  p mixed_array
end

swingers([
  ["Clyde", "Bonnie"],
  ["Paris", "Helen"],
  ["Romeo", "Juliet"],
  ["Huey", "Aja"]]
)
