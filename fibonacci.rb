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

def nth_fibonacci(count)
    # Your code goes here
    # if count is negative
    if count <= 0 then return "Please enter positive integer" end
    
    # Declare an array that will store the sequence and prime it with the first 2 elements
    fib_sequence = [0,1]

    # Declare a counting loop using the input parameter
    count.times do |n|
        # Skip the first 2 entries since we already have those
        if n > 1
            # For each new entry, add the previous 2 entries and store it
            fib_sequence << fib_sequence[n-2] + fib_sequence[n-1]
        end
    end

    # Return the correct element of the array. Use count-1
    # since the array is zero indexed.
    return fib_sequence[count-1]
end