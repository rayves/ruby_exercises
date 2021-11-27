#global substitution replaces all instances of specified element

my_name = "Alex Baulderstone"
puts my_name.gsub(/[ls]/,"1")
puts my_name.gsub(/[ls]/,"l" => "1", "s" => "5")

# replaces first instance of character

.sub 
