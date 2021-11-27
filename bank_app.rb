#EXISTING ISSUES
#	Deposit parameters not set so only positive numbers accepted.
#	Withdrawal input accepts letter characters when it should only accept numbers.


def banking_app
	acc_balance = 0.to_f
	withdraw = 0
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
			puts "How much would you like to withdraw? or return"
			while withdraw = gets.chomp.to_f
				if withdraw <= acc_balance && withdraw >= 0
					acc_balance -= withdraw
					puts "Your balance is now $#{acc_balance}"
					puts "Would you like to make another withdrawal?"
					break
				elsif withdraw > acc_balance && withdraw >= 0
					puts "Insufficient funds."
					puts "Please withdraw an amount equal to or less than your balance or Return"
				else
					puts "Invalid number!"
					puts "How much would you like to withdraw? or return"
				end
			end
			while deposit_loop = gets.chomp
				system "clear"
				case deposit_loop
				when "yes"
					puts "How much would you like to withdraw?"
					while withdraw = gets.chomp.to_f
						if withdraw <= acc_balance && withdraw >= 0
							acc_balance -= withdraw
							puts "Your balance is now $#{acc_balance}"
							puts "Would you like to make another withdrawal?"
							break
						elsif withdraw > acc_balance && withdraw >= 0
							puts "Insufficient funds."
							puts "Please withdraw an amount equal to or less than your balance or Return"
						else
							puts "Invalid number!"
							puts "How much would you like to withdraw? or return"
						end
					end
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
