=begin
    
In the lesson, we implemented one test for the largest method, which takes an array as input, and returns the largest element in the array.

In this challenge, do the same for a smallest method, which takes an array as input and returns the smallest value.

Make sure you test for number and string arrays.

To run your tests, open the terminal and use rspec directly. Play with the formatting and other options you learned about in this lesson.

When you have implemented at least 3 passing tests, click 'Mark' to submit your work.
    
=end

def smallest(array)
    smallestValue = array[0]
    array.each do |value|
        if value < smallestValue
            smallestValue = value
        end
    end
    return smallestValue
end

pp smallest([2,3,8,5,10])

pp smallest(["asd","omfd","km","poir"])