# my_file = File.open("./list.txt")
# #File = class
# # my_shopping_list = my_file.read.split("\r\n")
#     #list will be concatinated and displayed as a string
#     #file is stored in this variable
#     # split to convert the string into an array
# my_shopping_list = my_file.readlines.map(&:strip)
#     # readlines displays file as an array with newline characters
#     # redlines is explicit
#     # map to remap the array with something applied to each element
#     # strip to remove white space

# my_file.close
# #to close File and release from memory
# #unclosed files can create memory leaks

# pp my_shopping_list

# my_shopping_list = File.read("./list.txt").split("\r\n")
# #     # read method from file Class automatically opens and closes files
# #     # reads whole file which may use a lot of memory

# pp my_shopping_list


# #* foreach reads file line by line
# # for each sees everything in the final line of text file as nil
# File.foreach("./list.txt") do |x|
#     x.strip!.capitalize!
#     puts "We really need to buy " + x + "!!"
# end

# #* Appending to file
# puts "What do we need from the shops"
# item = gets.chomp
# my_file = File.open("./list.txt", "a")
#     # "w" flag opens file in write mode
#     # "a" flag allows writing to file without overwriting
#       # "+" at the end of flag creates new file

# my_file.write("\n#{item}")
#     #appends directly to end (no new line)

# my_file.close

# my_shopping_list = File.read("./list.txt").split("\r\n")
#     #opens file, assigns to variable with parameters, closes file
# puts "What do we need from the shops"
# item = gets
# my_shopping_list.push(item)
#     #appends new item to variable array

# File.open("./list.txt", "w") do |file|
#     my_shopping_list.each do |item|
#         file.write("#{item}")
#     end
# end

#*go (iterate) through every line of file and append to array my_shopping_list
my_shopping_list = []
File.foreach("./list.txt") do |line|
    my_shopping_list << line.strip
end

pp my_shopping_list

# puts "What do we need from the shops"
# item = gets.chomp
# File.open("./new-list.txt", "a+") {|f| f.puts(item)}
# my_shopping_list.push(item)

# File.open("./list.txt", "w") do |file|
#     my_shopping_list.each do |item|
#         file.puts("#{item}")
#     end
# end