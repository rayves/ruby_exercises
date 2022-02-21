=begin

Implement a function that will convert a decimal number to binary, returning a string representation of the binary number. The input is an integer. 

Your function should implement an algorithm that does the conversion (for example, the division method of conversion).

=end

def decimal_to_binary (decimal)
	# your code here
	binary = []
	calc = decimal
	until calc < 2
		binary << calc % 2
		calc = calc / 2
	end
	if calc == 1
		binary << 1
	else
		binary << 0
	end
	return binary.reverse.join
end



pp decimal_to_binary(10)