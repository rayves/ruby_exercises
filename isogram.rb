=begin
    
An isogram is a word that has no repeating letters; consecutive or non-consecutive.

Implement a method that determines whether a string that contains only letters is an isogram. The method will take the string as an argument, and will return either true or false.

*E.g.* is_an_isogram("hello") should return false

*E.g.* is_an_isogram("scary") should return true
    
=end

def is_an_isogram (string)
    # Your code here
    check = string.chars.tally
    check.each do |letter, value|
        if value > 1
            return false
        end
    end
    return true
end

# def is_an_isogram (string)
#     # Your code here
#     check = string.chars
#     check_count = Hash.new(0)
#     check.each do |letter|
#         check_count += letter
#     end
#     check_count.each do |letter, value|
#         if value > 1
#             return false
#         end
#     end
#     return true
# end

pp is_an_isogram("hello")

pp is_an_isogram("scary")