# Your code here

puts "What time is it?"
time = gets.chomp.to_i

case time
when 6..11
    puts "Good morning!"
when 12
    puts "Lunchtime"
when 13..19
    puts "Afternoon blues"
when 19..20
    puts "Dinnertime"
when 21..23
    puts "Sleepy time"
when 0..6
    puts "Sleepy time"
else 
    puts "That is not correct 24hr time!"
end

