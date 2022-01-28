=begin
    
Have you heard? Robots are taking over the humans. Now when you go to the casino, a computer tells you what your poker hand is. Well, our computer is only just starting out, and can only tell us whether or not we have a Full House, but the feeling is still the same.

For those unfamiliar with poker, a player will receive 5 cards. A Full House occurs when a player gets 3 types of one card, and 2 types of another.

Create a method that will take a user's hand as an argument. The user's hand will always be an array of 5 strings. The strings will be anything from "2", "3" ... all the way to the royals ... "J", "Q", "K", "A". The royals will all be uppercase.

Your method will simply return true, if the hand is a Full House, or false if it is not.


E.g. full_house(["A", "A", "3", "3", "A"]), should return true

 It returns true as the player received 3 X "A" and 2 X "3"

E.g. full_house(["4", "A", "K", "4", "Q"]), should return false

E.g. full_house(["4", "4", "K", "4", "4"]), should return false

E.g. full_house(["J", "5", "J", "5", "J"]), should return true


Extra notes:

If you were able to smash this challenge out of the park, have a go at the more advanced version: https://www.codewars.com/kata/ranking-poker-hands/ruby
    
=end

def full_house(players_hand)
	# Your code here
    players_hand.each do |card|
        if card.to_i > 1 && card.to_i < 11 || card == "J" || card == "Q" || card == "K" || card == "A"
            true
        else
            return "Invalid Hand"
        end
    end
    hand_count = players_hand.tally
    if hand_count.has_value?(2) && hand_count.has_value?(3)
        return true
    else
        false
    end
end

pp full_house(["A", "A", "3", "3", "A"])

pp full_house(["4", "A", "K", "4", "Q"])

pp full_house(["4", "4", "K", "4", "4"])

pp full_house(["J", "5", "J", "5", "J"])

pp full_house(["J", "0", "J", "5", "J"])

pp full_house(["J", "12", "J", "5", "J"])


# # different method for counting elements in array
# str.split.inject(Hash.new(0)) { |h,v| h[v] += 1; h }