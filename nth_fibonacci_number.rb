=begin
A Fibonacci sequence is a list of numbers that begins with 0 and 1, and each subsequent number is the sum of the previous two. I.e. 0,1,1,2,3,5,8...

Write a method that will return the nth number of the sequence. The syntax is easy, getting your head around the algorithm is the challenge. It might be worth writing this in pseudocode before writing the method.

E.g. nth_fibonacci(1) should return 0

E.g. nth_fibonacci(3) should return 1

E.g. nth_fibonacci(15) should return 377

E.g. nth_fibonacci(0) should return "Please enter a positive integer"

E.g. nth_fibonacci(-5) should return "Please enter a positive integer"


Optional

Do some research on the application of the fibonacci sequence
=end

num1
num2
sum

def nth_fibonacci(count)
    # Your code goes here
    if count == 0
        return 0
    elsif count == 1
        return 1
    else
        
end