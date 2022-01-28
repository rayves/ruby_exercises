=begin
    
Find The First Non-Repeated Character
Write a method that will find the first non-repeated character in a String. Return false if only repeats are found. Try writing this by hand first. Confusing methods like this can become a lot more simple after they are written by hand.

E.g. first-non-repeat("awwwhhhggge") should return 'a'

E.g. first-non-repeat("aaaabbbcccdeeefgh") should return 'd'

E.g. first-non-repeat("wwwhhhggge") should return 'e'

E.g. first-non-repeat("wwwhhhggg") should return false

E.g. first-non-repeat("") should return false
    
=end

def first_non_repeat (string)
    # Your code here
    # if string.length < 1
    #     return false
    # end
    check = string.chars.tally
    check.each do |letter, value|
        if value == 1
            return letter
        end
    end
    return false
end

pp first_non_repeat("awwwhhhggge")

pp first_non_repeat("aaaabbbcccdeeefgh")

pp first_non_repeat("wwwhhhggge")

pp first_non_repeat("wwwhhhggg")

pp first_non_repeat("")