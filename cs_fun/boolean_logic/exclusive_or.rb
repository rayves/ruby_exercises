=begin
    
Implement a function that returns the exclusive or of 2 decimal values. It will be helpful to use your implementation of the decimal to binary challenge from the bases lesson. 

exclusive_or(num1, num2)

- takes decimal numbers as parameters
- returns a decimal value of the exclusive or of the two parameters

Example: exclusive_or(7, 3) => 4

Hint 1: Use to_i(2) to convert the XOR bit string result to a decimal

"100".to_i(2) => 4

Hint 2: If you are using a loop to compare the binary string characters, consider that one may be longer than the other, and you will have to account for that:

"100" xor "1" => "100" xor "001" => "101" 
    
=end

def exclusive_or(num1, num2)
	# your code here
end