=begin

ATM machines allow 4 or 6 digit PIN codes and PIN codes cannot contain anything but exactly 4 digits or exactly 6 digits. Your task is to create a method that takes a string and returns true if the PIN is valid and false if it's not.

E.g. is_valid_PIN("1234"), should return true

E.g. is_valid_PIN("a234"), should return false

E.g. is_valid_PIN("123456"), should return true

=end

def is_valid_PIN(pin)
	#Your code here
    # begin
    # check = pin
    if pin.count = 4 && pin.is_a?(Integer)
        puts "true"
    elsif pin.count = 6 && pin.is_a?(Integer)
        puts "true"
    else
        puts "false"
    end
    # rescue
    #     puts "false"
    # end
end

is_valid_PIN("1234")

is_valid_PIN("a234")

is_valid_PIN("123456")