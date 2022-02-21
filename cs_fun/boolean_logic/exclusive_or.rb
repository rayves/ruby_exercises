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

def decimal_to_binary(decimal)
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
	return binary.reverse
end

# def match_binary_length(bi_one, bi_two)
# 	if bi_one.length > bi_two.length
# 		add = bi_one.length - bi_two.length
# 		until bi_one.length == bi_two.length
# 			bi_two.unshift(0)
# 		end
# 	elsif bi_one.length < bi_two.length
# 		add = bi_two.length - bi_one.length
# 		until bi_one.length == bi_two.length
# 			bi_one.unshift(0)
# 		end
# 	end
# end

def convert_to_decimal(binary)
	n = 0
	pre_decimal = []
	binary.each do |num|
		new_num = num * (2 ** n)
		pre_decimal << new_num
		n += 1
	end
	return pre_decimal.sum
end

def exclusive_or(num1, num2)
	# your code here
	bi_one = decimal_to_binary(num1)
	bi_two = decimal_to_binary(num2)
	binary = []
	if bi_one.length > bi_two.length
		add = bi_one.length - bi_two.length
		until bi_one.length == bi_two.length
			bi_two.unshift(0)
		end
	elsif bi_one.length < bi_two.length
		add = bi_two.length - bi_one.length
		until bi_one.length == bi_two.length
			bi_one.unshift(0)
		end
	end
	index = 0
	until index > bi_one.length - 1
		if bi_one[index] == bi_two[index]
			binary << 0
		else
			binary << 1
		end
		index += 1
	end
	return convert_to_decimal(binary.reverse)
end



pp exclusive_or(7, 3)