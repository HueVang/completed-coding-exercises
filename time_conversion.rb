# Write a method that will take in a number of minutes, and returns a
# string that formats the number into `hours:minutes`.


def time_conversion(minutes)
  hr = 0
  min = 0
  
  while minutes >= 0
    if minutes >= 60
      minutes = minutes - 60
      hr = hr + 1
    elsif minutes < 10
      min = 0.to_s + minutes.to_s
      return hr.to_s + ':' + min.to_s
    else
      min = minutes
      return hr.to_s + ':' + min.to_s
    end
  end
end

puts time_conversion(361)
puts time_conversion(360)
# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('time_conversion(15) == "0:15": ' + (time_conversion(15) == '0:15').to_s)
puts('time_conversion(150) == "2:30": ' + (time_conversion(150) == '2:30').to_s)
puts('time_conversion(360) == "6:00": ' + (time_conversion(360) == '6:00').to_s)
