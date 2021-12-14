=begin
    
Make sure you understand the divide method given in the scaffold. Test what happens if you call it with invalid input.

Currently if there is a problem with the input given (i.e., one is not a number or the second number is 0), an exception will be thrown.

Your challenge is to:

Write a custom error class called NotNumberError that extends StandardError

When one of the arguments to the divide method is not a number, raise a NotNumberError with the message "Value is not a number"

Write another customer error class called InvalidZeroError that extends StandardError

When the second argument to the divide method is a zero, raise the InvalidZeroError with the message "Divisor cannot be zero"

=end

def divide(dividend, divisor)
    return dividend/divisor
end