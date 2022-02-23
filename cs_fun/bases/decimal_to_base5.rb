def decimal_to_base_five(decimal, base)
    converted = []
    convert = decimal
    until convert < base
        converted << (convert % base)
        convert = convert / base
    end
    converted << convert
    return converted.reverse.join
end

pp decimal_to_base_five(124, 15)

