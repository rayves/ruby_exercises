# Your code here
puts "What's the weather today?"
weather = gets.chomp.to_i
if weather < 15
    puts "It's too cold"
elsif weather >= 15 and weather <= 28
    puts "It's beautiful today"
elsif weather > 28
    puts "It's too hot"
else
    puts "incorrent input"
end


