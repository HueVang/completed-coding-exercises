puts 'Welcome to Tower of Hanoi!'
#These are the three arrays you'll be working with.
tower1 = [5, 4, 3, 2 ,1]
tower2 = []
tower3 = []
#The while loop that checks if condition of moving all stacks to the other tower is true.
while tower3 != [5, 4, 3, 2, 1]
  t1 = tower1
  t2 = tower2
  t3 = tower3
  #Prompts user to select input and turns it into an integer value.  
  puts 'Please select a tower. (1, 2, or 3)'
  select = gets.chomp.to_i
  
  #This is the loop where the program checks to see if the move is valid, then grabs a valid stack from the ring.
  while true
  t1 = tower1
  t2 = tower2
  t3 = tower3
    grab = 0
    while (select == 1) && (t1 == []) || (select == 2) && (t2 == []) || (select == 3) && (t3 == []) || (select > 3)
      puts 'Please select a valid tower.'
      select = gets.chomp.to_i
    end
      
    if (select == 1) && (t1 != []) 
      grab = t1.pop 
      break
    elsif (select == 2) && (t2 != [])
      grab = t2.pop
      break
    elsif (select == 3) && (t3 != [])
      grab = t3.pop
      break
    end
  end
  # For some reason, it doesn't go to the "else" part when we try to add a higher number over a smaller one. Try to figure out why when you come back on. (Line 51)
  # Edit: FIXED IT! (I put the string on the same like as "else"; which was a mistake.)
  # Lines 40 - 56 checks to see if you can move the stack onto a ring. If it is valid, the move will be made.
  puts 'Where do you want to move it?'
  while true
  select = gets.chomp.to_i
    if ((select == 1) && (t1 == [])) || ((select == 1) && (grab <= t1.last))
      t1 = t1<< grab
      break
    elsif ((select == 2) && (t2 ==[])) ||((select == 2) && (grab <= t2.last)) 
      t2 = t2<< grab
      break
    elsif ((select == 3) && (t3 == [])) || ((select == 3) && (grab <= t3.last))
      t3 = t3<< grab
      break
    else 
      puts 'Please select a valid tower.'
      select = gets.chomp.to_i
    end
  end
  #This just prints out the arrays and shows the location of each stack after every move.
 p
 p t1
 p t2
 p t3 

end
#If you see this, YOU WIN! HURRAY!
puts "You Won! Congrats!"

