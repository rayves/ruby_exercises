=begin

It is common for applications to provide a help message or usage statement. Often this message is displayed if the application is executed with the argument --help, or -h.

In this challenge, you will implement code to provide a help message for a simple application. You will also have to detect if an argument used by the application to perform its task is provided, and use it appropriately.

Flip a Coin
This application will flip a coin a given number of times, and present the overall flip results. The user will be prompted to enter the number of coin flips, or it can be passed in as an argument to the application.

Example:

ruby coin_flip.rb 5        # <-- Flips a coin 5 times and prints results
Currently the application checks ARGV for an argument. If it finds one, it assumes it is a number and flips the coin the specified number of times.

You will modify the code so that if the application is passed the argument --help or -h, it prints this usage statement:

ruby coin_flip.rb -h        
# ^^ Prints usage statement: 
coin_flip will simulate flipping a coin the number of times specified.
You can specify a number of flips as an argument, or you will be prompted to enter a number.
Test your solution using the terminal. 

Try each of the following, and verify you get the expected results:

ruby flip_coin.rb -h              # <-- should display usage statement

ruby flip_coin.rb --help       # <-- should display usage statement

ruby flip_coin.rb                   # <-- should prompt to enter a number of flips

ruby flip_coin.rb 5                # <-- should not prompt and flip 5 times

ruby flip_coin.rb 4 -h            # <-- should display usage statement

ruby flip_coin.rb -h 4           # <-- should display usage statement

When it works as expected, click Submit to submit your work.

=end

# Usage statatement
def usage
	puts "coin_flip will simulate flipping a coin the number of times specified."
	puts "You can specify a number of flips as an argument, or you will be prompted to enter a number."	
end

def flip_coin(flips)
	results = {heads:0,tails:0}
	flips.times do
		flip = Random.rand(1..2)
		flip == 1 ? results[:heads] += 1
				  : results[:tails] += 1
	end
	return results
end

# Main program

if ARGV[0]
	number_of_flips = ARGV[0].to_i
else
	number_of_flips = 0	
end

if number_of_flips == 0
	# prompt for number
	puts "how many flips?"
	number_of_flips = gets.to_i
end

puts flip_coin number_of_flips