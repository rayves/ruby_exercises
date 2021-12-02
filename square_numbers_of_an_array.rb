=begin

The square_numbers_of_an_array method takes an array of numbers as an argument. 

Write code inside of the method that will square each of these numbers, and return an array with the square for each number.

E.g. square_numbers_of_an_array([1, 2, 3, 4, 5]) should return [1, 4, 9, 16, 25]

E.g. square_numbers_of_an_array([9]) should return [81]

E.g. square_numbers_of_an_array([]) should return []
    
=end

#* my method
def square_numbers_of_an_array (array_of_numbers)
	array_squared = array_of_numbers

	# Your code here.
	# Use the array_squared variable to store
	# the result of squaring each value in array_of_numbers
    new_array = array_squared.map {|num| num**2} 
    pp new_array
	return new_array
end

#* method asked by question
def square_numbers_of_an_array (array_of_numbers)
	array_squared = []

	# Your code here.
	# Use the array_squared variable to store the result of squaring each value in array_of_numbers

    array_of_numbers.each do |num|
        array_squared << num **2
    end
    pp array_squared
	return array_squared
end

square_numbers_of_an_array([1, 2, 3, 4, 5])