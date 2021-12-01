# Write a program to implement a simple bank account. 

def banking_app
	# Ask the user for a password before proceeding.
	password = "1234"
	
	puts "What is your password?"
	if gets.chomp != password
		puts "Denied!"
		return
	end
	
	
    # The initial balance should be 0
	balance = 0
	
	# Wrap the program in a loop so the user can view balance and then deposit over and over.
	loop do
		# Use puts to display a nice welcome message.
		puts "Welcome to your banking app."
		puts "Your balance is #{balance}"

		# Let the user determine the output. Ask them what they would like to do.
		# Add ‘deposit’ as an option
		# Add 'withdrawal' as an option
		puts "What would you like to do? (options: balance, deposit, withdraw)"
		choice = gets.chomp

		# If the user types anything other than balance, say “Invalid selection!”
		case choice
			when 'balance'
				puts "Your balance is #{balance}"
			when'deposit'
				puts "Deposit how much?"
				amount = gets.chomp.to_i
				balance = balance + amount
				puts "Your balance is #{balance}"
			when 'withdraw'
				puts "Withdraw how much?"
			    # Make sure they can’t withdraw more than their total balance.
				amount = gets.chomp.to_i
				if amount < balance
					balance = balance - amount
					puts "Your balance is #{balance}"
				else
					puts "Insufficient Funds"
				end
			else
				puts "Not a valid choice"
		end
		# how to clear the screen between loops.
		system "clear"
	end
end

banking_app