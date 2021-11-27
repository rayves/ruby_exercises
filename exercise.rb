def my_each(list)
   for i in (0...list.count)
   name = list[i]
   yield(list[i])
   end
end

names = ["Alice", "Bob", "Charlie"]
my_each(names) do |name|
    puts "Hello " + name
end