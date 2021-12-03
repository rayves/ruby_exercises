#* error = exception

begin
    # Here we try some code that could raise an exception
rescue => exception
    # If an exception happens, instead of crashing our program, run this code.

ensure
    # We run the code in here regardless of whether there is an exception or not

end

# used to handle the unexpected
# slower than if else statements
# more effient to anticipate errors
# use if statement to handle errors before they happen. Use rescues after errors happen.