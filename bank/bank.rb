class Bank

	def initialize
		puts "first name?"
		@first_name = gets.chomp
		puts "last name?"
		@last_name = gets.chomp
		@cc = 0
		@balance = 0
	end
	
	def zero?
		@balance >= 0
		end
	end 

	def statement
		balance = @balance.round(2)
		cc = @cc.round(2)
		puts "Your Checking Account has $#{balance}"
		puts "You owe $#{cc} on your Credit Card"
	end
	def deposit(debit)
		@balance += debit.to_f
		puts "You deposited $#{debit}. Your new balance is $#{@balance.round}"
	end
	def withdrawl(credit)
		if 	@balance - credit.to_f >= 0
			@balance -= credit.to_f
			puts "You withdrew $#{credit}. Your new balance is $#{@balance}"
		else
			puts "NSF error "
		end
	end
	def cc_purchase(credit)
		@cc += credit.to_f 

	end

	def pay_credit(debit)
		@cc -=debit.to_f 
		@balance -=debit.to_f	
	end

	def interest
		@balance *= 1.0003
		@cc *= 1.015 
	end
	
end