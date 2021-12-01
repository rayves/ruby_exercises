=begin

Part 1
Write a loop to check whether a particular value is in a given array. If there are multiple occurrences of the value in the array, "Found in array" should only be printed once.

E.g. 

numbers = [4, 5, 3, -7, 20, 0]

value = 5

Output: "Found in array"

E.g. 

numbers = [4, 5, 3, -7, 20, 0]

value = 6

Output: "Not found in array"

E.g. 

numbers = [4, 5, 3, -7, 20, 0, 5]

value = 5

Output: "Found in array"

Part 2
Rewrite your code for Part 1 using a built-in Ruby function instead of a loop. 

Part 3
Write a method to check whether a particular name is in an array of names (case insensitive). A method is a block of code that groups together certain lines of code (We'll be covering this next week - In the meantime, you can read more about methods here.) 

Our methods must return or give back a value, so instead of using puts to output if the name is in the array we want to return the string "Found in array" or "Not found in array" instead. We can see that the scaffold method has puts before the method is called, so our method is giving back or returning a value which is then being outputted to the screen by the puts

E.g. 

names = ["lin", "nandini", "carl", "zeb", "janel", "varsha", "lavanya"]

is_name_in_array(names, "carl")

Output: "Found in array"

Eg.

names = ["lin", "nandini", "carl", "zeb", "janel", "varsha", "lavanya"]

is_name_in_array(names, "bob")

Output: "Not found in array" 

E.g.

names = ["lin", "nandini", "carl", "zeb", "janel", "varsha", "lavanya"]

is_name_in_array(names, "Lin")

Output: "Found in array"

=end

puts "What is the number to search for?"
number = gets.chomp.to_i

numbers = [4, 5, 3, -7, 20, 0, 5]

# Part 1: Your code here
index = 0 #loop starting point
while index < numbers.length
    if numbers[index] == number
        puts "Found in array"
        break
    end
    index += 1
    if index == numbers.length
        puts "Not found in array"
    end
end

# Part 2: Your code here (comment out your part 1 solution before you test this solution)
if numbers.include?(number)
    puts "Found in array"
else
    puts "Not found in array"
end

# Part 3

def is_name_in_array(names,name)
	# Your code here
    index = 0
    while index < names.length
        if names[index] == name
            return "Found in array"
        end
        index += 1
    end
    return "Not found in array"
end

# call the method
puts is_name_in_array(["lin", "nandini", "carl", "zeb", "janel", "varsha", "lavanya", "bianca"], "bianca")