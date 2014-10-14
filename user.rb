# Class User - for class 5 exercises


class User
	attr_accessor :first_name, :last_name, :age, :meals_eaten, :bac
	def initialize(first_name, last_name, age)
		if first_name == nil || last_name == nil || age == nil
			puts "Please input a first name, last name, and age for the user" 
		else 
			@first_name = first_name
			@last_name = last_name
			@age = age
			@meals_eaten = 0
			@bac = 0.0
		end
	end

	def full_name
	first_name.to_s + " " + last_name.to_s 
	end 

	def eat(food)
		food.eaten = true
		self.meals_eaten = self.meals_eaten + 1 
		puts food.noise
	end

	def is_full
		if self.meals_eaten == 0
			puts "starving!"
		elsif self.meals_eaten >= 3
			puts "so full"
		else 
			puts "a bit peckish"
		end
	end

	def blend(food1,food2)
		# put 2 foods together
		blend_name = food1.name + "-" + food2.name + " shake"
		blend_noise = food1.noise + food2.noise + food1.noise + food2.noise
		puts "Looks...appetizing"
		Food.new(blend_name, blend_noise)
	end

	def cheers
		if self.age < 21 
			puts "You're not old enough for that"
		else 
			if self.bac >= 0.12
				puts "I think you've had enough"
			else 
				if self.meals_eaten == 0 
					self.bac += 0.04
				else 
					self.bac += 0.02
				end
			end
		end
	end 

	def sober_up
		if self.bac < 0.01
			puts "You're already there"
		else 
			puts "Sobering up...done"
			self.bac = 0.0
		end
	end


end

