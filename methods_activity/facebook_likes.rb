=begin
    
We are all familiar with the Facebook likes. Someone posts a photo or makes a post. When the post is first released:

If no one likes it, it says a sad "No one likes this" underneath it

If one person likes it - it says "#{name} likes this"

If two people like it - it says "#{name} and #{name} like this"

If 3 people like it - it says "#{name}, #{name} and #{name} like this"

If 4 or more people like it - it says "#{name}, #{name} and #{num} others like this", where the two names are the most recent in the array, and the num is the remaining amount of people (see last example below) 

Write a method called facebook_likes that takes an array of people's names as an argument. The method should loop through these names to tell the user who likes the post, in the above format. Make sure to return the strings in your method.

Super important: Make sure to get the grammar correct!! You can check this by running your code against our test cases by clicking the "Mark" button after you finish coding. You can also add some code to print the result of calling your method and click the "Run" button to see what result you get.

E.g. facebook_likes(["Alex"]) should return "Alex likes this"

E.g. facebook_likes([]) should return "No one likes this"

E.g. facebook_likes(["Alex", "Nandini"]) should return "Nandini and Alex like this"

E.g. facebook_likes(["Alex", "Garret", "Paul", "Aleisha", "Sarah", "Macey"]) should return "Macey, Sarah and 4 others like this"
    
=end

def facebook_likes(names)
    case names.length
    when 0
        return "No one likes this"
    when 1
        return "#{names[0]} likes this"
    when 2
        return "#{names[1]} and #{names[0]} like this"
    when 3
        return "#{names[2]}, #{names[1]} and #{names[0]} like this"
    else
        return "#{names[-1]}, #{names[-2]} and #{names.length - 2} others like this"
    end
end

puts facebook_likes(["Alex"])

puts facebook_likes([])

puts facebook_likes(["Alex", "Nandini"])

puts facebook_likes(["Alex", "Garret", "Paul", "Aleisha", "Sarah", "Macey"])