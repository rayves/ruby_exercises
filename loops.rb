names = ["Bob", "Charlie", "Lin", "Nands", "Rachel", "Ben", "Isaac", "Hugh", "Ashley", "Brendon"]

# while statement
index = 0 #starting variable for loop/statment
while index < names.length #condition
    puts "welcome #{names[index]}!" #output
    index += 1 #+1 to variable
end

#for method 
for name in names do # for variable in array do
    puts name # output
end

#each method
names.each do |name| #for each element in names do |temporary variable|
    puts name #output
end
