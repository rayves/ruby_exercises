=begin
    
Octal is a base-8 number system using the digits 0-7. The Yuki language in California (Avelino, 2006) and the Pamean languages in Mexico have octal systems because the speakers count using the spaces between their fingers rather than the fingers themselves (Ascher, 1992) . (Make sure you cite those sources folks) 

Write a method that converts a decimal (base-10) number to octal (base-8) without using to_s(8)

E.g. octal_convertor(10) returns 12

E.g. octal_convertor(0) returns 0

E.g. octal_convertor(100) returns 144


Once you've completed this challenge you should be able to answer the hilarious coding joke "Why can't programmers tell the difference between Christmas and Halloween" 

Works Cited 

Ascher, Marcia. “ Ethnomathematics: A Multicultural View of Mathematical Ideas.” The College Mathematics Journal, vol. 23, no. 4, 1 Sept. 1992, pp. 353–355.

Avelino, Heriberto. “The Typology of Pame Number Systems and the Limits of Mesoamerica as a Linguistic Area.” Linguistic Typology , vol. 10, 26 Oct. 2006, pp. 41–60.
        
=end

def octal_convertor(num)
    converted = []
    convert = num
    base = 8
    until convert < base
        converted << (convert % base)
        convert = convert / base
    end
    converted << convert
    return converted.reverse.join.to_i
end 

pp octal_convertor(10)
pp octal_convertor(0)
pp octal_convertor(100)