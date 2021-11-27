# Write a program to implement a simple bank account. 



def banking_app
	# Your code here.
	acc_balance = 0.to_f
	puts "Welcome to the banking app"
	puts "Please enter your password."
	gets.chomp
	puts "what would you like to do? (options: balance or deposit)"
	options = gets.chomp
	if options == "balance"
		puts "Your balance is $#{acc_balance}"
	elsif options == "deposit"
		puts "how much would you like to deposit?"
		acc_balance += gets.chomp.to_f
		puts "Your balance is now $#{acc_balance}"
		puts "Would you like to make another deposit?"
		while deposit_loop = gets.chomp
			system "clear"
			case deposit_loop
			when "yes"
				puts "how much would you like to deposit?"
				acc_balance += gets.chomp.to_f
				puts "Your balance is now $#{acc_balance}"
				puts "Would you like to make another deposit?"
			when "no"
				break
			else
				puts "Invalid selection!"
				puts "Would you like to make another deposit?"
			end
		end
	else puts "Invalid selection!"
	end
end

banking_app
