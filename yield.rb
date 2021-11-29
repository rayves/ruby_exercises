#yield -> submit | give up control
# opens space for input when method is called  
# gives control to code block while method is running
# must give block if yield exists unless if block_given? is placed
# only one block can be passed

=begin

def do_something
    yield
end

def j_lo
    puts "Don't be fooled by the rocks that i got" #method runs
    yield #block runs
    puts "Used to have a little, now i have a lot" #method continues
end

j_lo do
    puts "I'm still I'm still Jennyt from the block"
end

def add(num1, numn2)
    answer = num1 + numn2
    yield(answer) #give up control to the block below, but also given the block a parameter to use.
    return answer
end

def add(num1, numn2)
    answer = num1 + numn2
    if block_given?
        yield(answer)
    end 
    return answer
end

def add(num1, numn2)
    answer = num1 + numn2
    yield(answer) if block_given?
    return answer
end

puts add(10, 5) #do |total|
   # puts "The answer is: #{total}"
#end

## yield multiple things

def head_down_thumbs_up
    yield("Put head down", 1) #2 parameters
    yield("Close eyes", 2)
    yield("Put thumbs up", 3) #block runs 3 times as yield 3 times
end

head_down_thumbs_up do |instruction, step|
    puts "#{step}. #{instruction}"
end

head_down_thumbs_up do |instruction, step|
    puts "Okay everybody, #{instruction}"
end

=end


# Challenge

def my_each(list)
    for i in (0...list.count)
        x = list[i]
        yield(x)
    end
end

names = ["Alice", "Bob", "Charlie"]
my_each(names) do |name|
    puts "Hello " + name
end