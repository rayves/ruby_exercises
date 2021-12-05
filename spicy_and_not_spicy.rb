=begin

It's Sunday, and it's time for Thai. You love spicy food, but your friend does not. You will be given two ordered arrays. One array, will have 'S' and 'N' (where S means spicy and N means not spicy). The other array will be the price of the dish. The arrays will always be the same length.

You will pay for all spicy meals, whilst you and your friend will split the non-spicy dishes. Return an ordered array of your owing and your friends owing.

Note: Regardless of whether you are given an int or a float, always return a float 

E.g. spicy_food(['S', 'N', 'N', 'S'], [12, 18, 17, 15]), should return [44.5, 17.5]

E.g. spicy_food(['N'], [23]), should return [11.5, 11.5]

E.g. spicy_food(['S', 'S', 'S', 'S', 'N'], [15, 14, 19, 23, 20]), should return [81.0, 10.0]

E.g. spicy_food([], []), should return [0.0, 0.0]

=end

def spicy_food(spice_arr, price_arr)
	#Your code here
    # arr = [0.00, 0.00]
    # price_arr.map!(&:to_f)
    
    # spice_arr.each.with.index do |a, i|
    #     if spice_arr[i] == "S"
    #         arr[0] += price_arr[i]
    #     else
    #         arr[0] += (price_arr[i] / 2)
    #         arr[1] += (price_arr[i] / 2)
    #     end
    # end
    # return arr
    you = 0.0
    friend = 0.0 
    spice_arr.each_with_index {|spice, index|
    if spice == "S"
        you += price_arr[index]
    else
        you += price_arr[index] / 2.0
        friend += price_arr[index] / 2.0
    end
    }
    [you, friend]
end


pp spicy_food(['S', 'N', 'N', 'S'], [12, 18, 17, 15])