=begin

Create a method that takes a number as an argument and returns "This is a prime number", if its a prime number, otherwise it returns
"This is not a prime number". Note, negative numbers can not be considered prime. 0 and 1 are also not prime!

E.g. is_it_prime(7), should return "This is a prime number"

E.g. is_it_prime(100), should return "This is not a prime number"

=end

def is_it_prime(num)
	#Your code here
	if ((num % 2 == 0) && num != 2) || ((num % 3 == 0) && num != 3) || ((num % 5 == 0) && num != 5) || num < 2
		return "This is not a prime number"
	else
        return "This is a prime number"
	end
end

puts is_it_prime(7)

puts is_it_prime(100)

puts is_it_prime(1)

puts is_it_prime(5)
puts is_it_prime(2)
puts is_it_prime(3)

