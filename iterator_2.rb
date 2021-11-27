# Your code here
puts "How old are you?"
age = gets.chomp.to_i
puts "Are you a citizen?"
citizen = gets.chomp
age >= 18 && citizen == "yes" ? (puts "You are eligible to vote!") : (puts "You are ineligible to vote!")
