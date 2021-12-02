=begin

The count_letters method (more on methods here - we will be covering this in class soon!) takes a string as an argument, and will return the count of each letter as a hash. 

E.g. count_letters("hello") should return {"h"=>1, "e"=>1, "l"=>2, o=>1}

E.g. count_letters("Thats The Ticket") should return {"T"=>3, "h"=>2, "a"=>1, "t"=>2, "s"=>1, "e"=>2, "i"=>1, "c"=>1, "k"=>1}

E.g. count_letters("") should return {}

We have written some test cases for this exercise. Click the "Mark" button to check your solution.

=end

def count_letters(input)
	# letter_count will store the hash you create in this challenge
	# from the input string that is passed to count_letters

    #* opposite to the below method
	letter_count = {}
	# Your code here
    # input.gsub(/\s+/, "").each_char do |letter|
    #     if letter_count.key?(letter)
    #         letter_count[letter] += 1
    #     else   
    #         letter_count[letter] = 1
    #     end
    # end

    input.gsub(/\s+/, "").each_char do |x|
            # gsub (/\+/, "") -> replaces all white spaces (/\s+) with nil ("")
            # .each_char _> then for each character do the following code
        if !letter_count.key?(x)
            # ! -> does not (opposite)
            # .key? -> has a key? true or false
            # .key?(x) -> has specified key? true or false
            # if letter_count does not have the key x then
            letter_count[x] = 1
        else   
            letter_count[x] += 1
            # else add 1 onto current value of key x
        end
    end

    # # * alternate method
    # TODO #https://stackoverflow.com/questions/19460428/using-ruby-to-count-number-of-letters-with-hash
    
    # counts = input.delete(' ').each_char.inject(letter_count.new(0)) {|a,c| a[c] += 1; a}
    # letter_count[counts.sort_by {|_,v| -v}]
    # # letter_count.delete(" ")
	# # Populate letter_count using an iterator 
	return letter_count
end

# Outputting the return value of count_letters
pp count_letters("Hello World")