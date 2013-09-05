class Car
	
	def initialize
		@fuel = 10
		@distance = 0 
		puts "the initialize method is running automatically"
	end

	def info
		return "I'm a car. I've driven #{@distance} miles and have #{@fuel} gallons of gas left"
	end
	def drive(miles)
		if (@fuel > 0) && (miles < 200)
			@distance += miles 
			@fuel -= (miles/20.0) 
		else 
			
		end
	end
	def fuel_up
		gallons = (10.0 - @fuel) 
		cost = gallons * 3.50
		puts "It will cost you #{cost} to fill up #{gallons}"
	end
end