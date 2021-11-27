# Write a program to implement a simple bank account. 



def banking_app
	# Your code here.
	acc_balance = 0.to_f
	puts "Welcome to the banking app"
	puts "Please enter your password."
	gets.chomp
	puts "What would you like to do? (options: balance, deposit, withdraw or exit)"
	while options = gets.chomp
		case options
		when "balance"
			puts "Your balance is $#{acc_balance}"
			puts "What would you like to do? (options: balance, deposit, withdraw or exit)"
		when "deposit"
			puts "How much would you like to deposit?"
			acc_balance += gets.chomp.to_f
			puts "Your balance is now $#{acc_balance}"
			puts "Would you like to make another deposit?"
			while deposit_loop = gets.chomp
				system "clear"
				case deposit_loop
				when "yes"
					puts "How much would you like to deposit?"
					acc_balance += gets.chomp.to_f
					puts "Your balance is now $#{acc_balance}"
					puts "Would you like to make another deposit?"
				when "no"
					puts "What would you like to do? (options: balance, deposit, withdraw or exit)"
					break
				else
					puts "Invalid selection!"
					puts "Would you like to make another deposit?"
				end
			end
		when "withdraw"
			puts "How much would you like to withdraw?"
			acc_balance -= gets.chomp.to_f
			puts "Your balance is now $#{acc_balance}"
			puts "Would you like to make another withdrawal?"
			while deposit_loop = gets.chomp
				system "clear"
				case deposit_loop
				when "yes"
					puts "How much would you like to withdraw?"
					acc_balance -= gets.chomp.to_f
					puts "Your balance is now $#{acc_balance}"
					puts "Would you like to make another withdrawal?"
				when "no"
					puts "What would you like to do? (options: balance, deposit, withdraw or exit)"
					break
				else
					puts "Invalid selection!"
					puts "Would you like to make another withdraw?"
				end
			end
		when "exit"
			puts "Thank you for using bank app."
			break
		else puts "Invalid selection!"
		end
	end
end

banking_app
