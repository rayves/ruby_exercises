begin
    puts "Enter your age:"
    age = gets.chomp
    birth_year = 2021 - age
    puts "you were born in #{birth_year}"
rescue
    puts "Oh no error happened"
end

puts "I'm still running"
