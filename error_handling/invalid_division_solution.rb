class NotNumberError < StandardError
end

class InvalidZeroError < StandardError
end

def divide (dividend, divisor)
    unless (dividend.is_a?(Numeric) && divisor.is_a?(Numeric)) 
        raise NotNumberError, "Value is not a number"
    end
    raise InvalidZeroError, "Divisor cannot be zero" if divisor == 0
    return dividend/divisor
end