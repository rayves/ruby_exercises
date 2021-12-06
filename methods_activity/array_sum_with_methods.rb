=begin
    
Part 1
Remember the sum arrays challenge from last week? Today we will rewrite our code using methods! Methods are a great way to group together and reuse lines of code in our programs.

Write a method called sum_array that takes in an array of numbers as an argument and returns the sum.

E.g. sum_array([10, 20, -10, 5, 0]) should return 25

E.g. sum_array([3]) should return 3

E.g. sum_array([]) should return 0

Part 2
Write a method called sum_two_arrays that takes in two arrays of numbers and returns the sum of the two arrays. Hint: You should use your sum_array method from Part 1 to help you write this method!

E.g. sum_two_arrays([10, 20, -10, 5, 0], [5, 3, -2]) should return 31

E.g. sum_two_arrays([10, 20, -10, 5, 0], [2]) should return 27

E.g. sum_two_arrays([3, 4, -9], []) should return -2

=end

def sum_array(numbers)
    sum = 0
    numbers.each do |number|
        sum += number
    end
    return sum
end


# def sum_array(numbers)
#     return numbers.sum
# end

puts sum_array([10, 20, -10, 5, 0])

puts sum_array([3])

puts sum_array([])

# def sum_two_arrays(numbers1, numbers2)
#     return numbers1.sum + numbers2.sum
# end

def sum_two_arrays(numbers1, numbers2)
    return sum_array(numbers1) + sum_array(numbers2)
end


puts sum_two_arrays([10, 20, -10, 5, 0], [5, 3, -2])

puts sum_two_arrays([10, 20, -10, 5, 0], [2])

puts sum_two_arrays([3, 4, -9], [])