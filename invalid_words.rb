=begin

Make sure you understand the print_num_letters method defined in the scaffold. It takes in an array of words and prints the each word and how many letters are in each word. 

E.g. 

print_num_letters(['apple', 'school', 'bus', 'blue', 'cloud']) 
should output:

The word apple has 5 letters in it.
The word school has 6 letters in it.
... and so on
Suppose our method is passed some invalid values in the array that are not strings, like 'nil' and numbers. What happens when you execute the program?

This is not very user friendly! Besides that - it makes our app unusable, because it stops it from processing valid calls and values that occur after the error is found.

Here is your challenge:

Handle the case that nil or a number is passed as an array value:

print_num_letters(['dog',nil,'cat',4,'bird'])
When this happens, your code should print a message about the nil value, and continue processing other array items.

E.g.

print_num_letters(['dog',nil,'cat',4,'bird'])
The word dog has 3 letters in it.
nil is not a valid value
The word cat has 3 letters in it.
4 is not a valid value
The word bird has 4 letters in it.
    
=end


def print_num_letters(words)
 words.each do |word|
    begin
        puts "The word #{word} has #{word.length} letters in it."
    end
    rescue 
        puts "#{word || "nil"} is not a valid value"
    end
end

# nil and numbers are not valid
print_num_letters(['dog',nil,'cat',4,'bird'])