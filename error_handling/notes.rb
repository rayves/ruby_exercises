def validate_name(name)
    name = name.strip
    raise ArgumentError, "Name must not be empty" if name.empty?
        #error must be in Pascal case
    name
end

validate_name ""

#* Custom errors

class InvalidNameError < StandardError
end
    #InvalidNameError inherets StandardError

def validate_name(name)
    name = name.strip
    raise InvalidNameError,
        "Name must not be empty" if name.empty?
        #raise called, error class and message passed with condition
        #error must be in Pascal case
    name
end
    # validaate_name function can be used and
    # able to rescue InvalidNameError type errors

begin
    
#! can defin a variable that keeps track of a error loop count to limit retries
    #impliment the count in the rescue block

#*begin
    #start of error handling for block that may raise an exception
#*rescue
    #error handler -> execute block if specified exception occurs
    #where not exception specified, then  StandardError (all othe errors) is captured
#*else
    #executes when no error (when rescue is not triggered)
#*ensure
    #always executed
    #certain action need to executed whether or not an erro has occured.
        #function to close/save file if
#*end
    #end of error handling block