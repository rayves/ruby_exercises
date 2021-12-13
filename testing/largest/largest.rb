def largest(values)
    largestValue = values[0]
    values.each do |value|
        if (value > largestValue)
            largestValue = value
        end
    end
    return largestValue
end
