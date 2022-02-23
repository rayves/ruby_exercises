=begin
    
Create a method that takes a string of hexadecimal numbers separated by spaces and returns the ASCII string it represents.  First convert each hexadecimal number to decimal (base 10), then find which ASCII letter it maps to.

e.g 

hex_string_to_ascii("68 65 6c 6c 6f 20 77 6f 72 6c 64") => "hello world"

hex_string_to_ascii("46 6f 6f 21 20 42 61 72 21") => "Foo! Bar!"


Hint: There may be a built in ruby method to convert decimal to to ASCII, it's also okay to seperate this problem into more than one method if that helps rationalise it. 

Note: There's also a very simple solution for this problem that you'd probably use in a 'real world' scenario. But this challenge is here to help you learn CS fundamentals
    
=end

def octal_convertor(num)
    converted = []
    convert = num
    base = 16
    until convert < base
        converted << (convert % base)
        convert = convert / base
    end
    converted << convert
    return converted.reverse.join.to_i
end 

def hex_string_to_ascii(str)
	#code here
	return str.codepoints
end 

pp hex_string_to_ascii("68 65 6c 6c 6f 20 77 6f 72 6c 64")
pp hex_string_to_ascii("46 6f 6f 21 20 42 61 72 21")