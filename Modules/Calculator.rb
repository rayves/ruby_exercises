=begin

1. Define the Calculator module. It should have 4 methods:

add(num1, num2)
subtract(num1, num2)
multiply(num1, num2)
divide(num1, num2)
2. Use the Calculator module to implement a method that takes 2 numbers, and returns the sum and difference of those numbers in a hash.

Example:

sum_difference(5, 4)    # <-- returns {:sum => 9, :difference => 1}
3. Use the Calculator module to implement a method that takes an array of numbers and returns the product of all of the numbers in the array.

Example:

multiply_all([1,2,3,4])  # <-- returns 24

=end

module Calculator
    # your code here
    def Calculator.add(num1, num2)
        return num1 + num2
    end
    def Calculator.subtract(num1, num2)
        return num1 - num2
    end
    
    def Calculator.multiply(num1, num2)
        return num1 * num2
    end
    def Calculator.divide(num1, num2)
        return num1 / num2
    end
end

def sum_and_difference(num1,num2)
    # your code here
    return {sum: Calculator.add(num1, num2), difference: Calculator.subtract(num1, num2)}
end

def multiply_all(values)
    # your code here
    # return Calculator.multiply(values)
    return values.reduce(1) {|product, value| Calculator.multiply(product, value)}
        #for values set initial value to 1 then run block
            #initial value does not need to be set in this case as then the first element of the array will be used as the initial value.
        #product = 1, value = elements
        # Calculator.multiply product against value then save total as new product then multiply next element.
end
      
#* different multiply all
# def multiply_all (numbers)
    #return numbers.reject(&:zero?).inject(:*)
        #reject = method that ignores set parameters
        #& = shorthand for a proc - used to represent the elements within an enumerable (database type)
        #: represents a symbol - in this case zero? is the symbol for the zero? method
        #zero? check if zero method
        #inject 
# end

pp sum_and_difference(5, 4)

pp multiply_all([1,2,3,4])
