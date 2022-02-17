=begin

A Narcissistic Number is a number which is the sum of its own digits, each raised to the power of the number of digits it has. Confused? Hopefully these examples will help...

E.g. 153 (3 digits)

1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153

E.g. 1634 (4 digits)

1^4 + 6^4 + 3^4 + 4^4 = 1 + 1296 + 81 + 256 = 1634

The Challenge

Your code must return true or false depending upon whether the given number is a Narcissistic number. The two examples above would return true. The example below would return false

E.g. 24 (2 digits)

2^2 + 4^2  = 4 + 16 = 20


N.b. Error checking for text strings or other invalid inputs is not required, only valid integers will be passed into the function.

=end

def narcissistic_number(num)
	# Your code here
    check = num.to_s.chars.map(&:to_i)
    last_arr = check.map{|number| number ** check.length}
    if last_arr.sum == num
        true
    else
        false
    end
end

# def narcissistic_number(num)
# 	# Your code here
#     check = num.digits 
#     last_arr = check.map{|number| number ** check.length}
#     if last_arr.sum == num
#         true
#     else
#         false
#     end
# end

pp narcissistic_number(153)

pp narcissistic_number(1634)

pp narcissistic_number(24)
