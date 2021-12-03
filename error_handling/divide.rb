def devide(num1, num2)
    num1/num2
end

begin
    puts "Enter first number:"
    first = Integer(gets.chomp)
    puts "Enter second number"
    second = Integer(gets.chomp)
    raise StandardError # raise error
    answer = divide(first, second)
    puts "The answer is #{answer}"
rescue ZeroDivisionError #must match case of specified error
    puts "You can't divide by zero"
    retry #restarts back to begin
rescue ArgumentError
    puts "Please enter only numbers"
    retry
rescue #catch all other errors
    puts "Something unexpected happened"
ensure
    puts "This will always happen"
end

#when string gets converted into integer ruby just returns 0 as it does not know what to do with it

puts "I'm still running"