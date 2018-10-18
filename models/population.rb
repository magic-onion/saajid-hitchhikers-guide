class Population

	attr_accessor :alien, :planet, :amount

	@@all = []

	def initialize(alien, planet, amount)
		@alien = alien # Alien object instance
		@planet = planet # Planet object instance
		@amount = amount # Integer

		@@all << self
	end


	def self.all
		@@all
	end
end




# Population belongs to a planet - DONE
# Population belongs to an alien - DONE

# Alien has many populations - DONE
# Planet has many populations - DONE

# Alien has many planets through its populations - DONE
# Planet has many aliens through its populations - DONE