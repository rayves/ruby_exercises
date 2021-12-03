require_realative 'valisation-error.rb'


def yes_or_no(question)
    puts question
    input = gets.chomp
    if input.downcase != "yes" && input.downcase != "no" #convert to lowercase to allow case sensitivity
        raise ValidationError.new("Please enter yes or no")
    end
    return input


end

# puts "Would you like to quit"
# answer = get.chomp
# yes_or_no(answer)

begin
    answer = yes_or_no("Would you like to quit?")
    
rescue ValidationError => e #variable - can be anything. Commonly e or exception
    puts e.message #theres a message property as the error is inherenting from StandardError
    retry
    
end

if answer.downcase == "yes"
    puts "goodbye"
    exit
end

puts "Let's keep on going"
puts "more code..."