def facebook_likes(people)
    #Your code here
    #Assume input always array.
    #INPUT: Array - (of strings, names)
    #STEP 1: Check length of Array - checks for num of names in array
    #IF 1 THEN return that name
    #IF 2 THEN return both names
    #IF 3 THEN return 3 names
    #IF 4+ return MOST RECENT two + rest as number
    #ELSE "no one likes this"
    #OUTPUT: String
    num_of_likes = people.length
    case people.length
    when 0
        return "no one likes this"
    when 1
        return "#{people[0]} likes this"
    when 2
        return "#{people[0]} and #{people[1]} likes this"
    when 3
        return "#{people[0]}, #{people[1]} and #{people[2]} likes this"
    else
        return "#{people[-1]}, #{people[-2]} and #{num_of_likes.-2} others like this"
        
    end
end

# in ruby brackets can be ommitted
puts facebook_likes []
puts facebook_likes ["Alex"]
puts facebook_likes ["Alex", "Garret"]
puts facebook_likes ["Alex", "Garret", "Paul"]
puts facebook_likes ["Alex", "Garret", "Paul", "Aleisha"]
puts facebook_likes ["Alex", "Garret", "Paul", "Aleisha", "Sarah", "Macey"]
