names = ["Alice", "Bob", "Charlie"]
numbers = [1,2,3,4,5,6]

#include returns true or false
if names.include?("Alice")
    puts "Alice if here"
end

#max returns maximum value
puts numbers.max

# iterartor methods expect a block
# each, iterates through the array and runs the given block for each element

names.each do |name|
    puts "Hello " + name
end

# Map, iterates through the array and runs the bloack on each element, returns a new array based on the 
lowercase_names = names.map do |name|
    name.downcase
end

pp lowercase_names
pp names

#exclaimation points are dangerous!
numbers.map! {|x| x + 1}
pp numbers

#Filter expects a block, returns a new array with all the elements which the block resolves as true
evens = numbers.filter do |num|
    num % 2 == 0
end

pp evens

#Reject does the opposite
odds = numbers.reject {|num| num.even?}
pp odds

alex_hash = {
    name: "Alex",
    location: "Melbourne",
    job: "Course Coordinator",
    nick_name: "Big Rock",
    hobbies: ["Board games", "Hiking", "Movies"]
    

alex_hash.each do |key, value|

end