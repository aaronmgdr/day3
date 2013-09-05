class Car
	
	def initialize
		@fuel = 10
		@distance = 0 
		puts "the initialize method is running automatically"
	end

	def get_info
		return "I'm a car. I've driven #{@distance} miles and have #{@fuel} gallons of gas left"
	end
	def drive(miles) 
		@distance += miles 
		@fuel -= (miles/20.0) 
		
	end
end