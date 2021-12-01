=begin
    
rescue => exception
    
end
Write a method that will take a string of space separated numbers as an argument, and return the highest and lowest number from this string.

E.g. max_min_in_string("5 2 9 8 23 1") should return "23 1"

E.g. max_min_in_string("15 4 4 38 -9") should return "38 -9"

E.g. max_min_in_string("-23 4 4 -23 8 0 -2") should return "8 -23"

=end

def max_min_in_string (str)
    # Your code here
    str.split.minmax.reverse.join(' ')
        # .split -> splits string by character into array
        # .minmax -> returns minimum and maximum values from array in an array of strings
        # _by(&:to_i) -> and converts to integer
        # .reverse -> flips (or reverses) order of array
        # .join -> joins array values seperated by ' ' (single space)

end

pp max_min_in_string("1 2 3 4 5 6 7 8")