=begin
    
Methods are a huge part of programming and we'll be using them all the time! Methods are very powerful, and can do things such as manipulate input, return values, or output to the terminal. 

1. Write a method called print_greeting that takes in a name as string and outputs a greeting.

     E.g. print_greeting("Josh") should output "Hi, my name is Josh"

2. Methods can also return values. Write a method called add_three that takes in a number as an argument and adds 3 to it and returns the result. 

     E.g. add_three(2) should return 5

     E.g. add_three(-2) should return 1

3. Methods can also return multiple values! Write a method called get_last_two_names that takes in an array of names and returns the last two names in the array. You can assume the array passed will have at least two names in it. 

    E.g. get_last_two_names(["sara", "james", "martha", "charlie"]) should return "martha", "charlie"

    E.g.  get_last_two_names(["sara", "james"]) should return "sara", "james"

Question: What kind of data type is Ruby returning when you return more than one value from a method? 

=end

rescue => exception
    
end

def print_greeting(name)
    puts "Hi, my name is #{name}"
end

print_greeting("Josh")

def add_three(num)
    return num + 3
end

puts add_three(2)

puts add_three(-2)


def get_last_two_names(names)
    return names[-2], names[-1]
end

puts get_last_two_names(["sara", "james", "martha", "charlie"])

puts get_last_two_names(["sara", "james"])
