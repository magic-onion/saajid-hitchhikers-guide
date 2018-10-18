class Planet

	attr_accessor :name, :climate

	@@all = []

	def initialize(name, climate)
		@name = name #String
		@climate = climate #String

		@@all << self
	end

	def populations
		Population.all.select do |pop|
			pop.planet == self
		end
	end

	def aliens
		self.populations.map do |pop|
			pop.alien
		end
	end

	def self.all
		@@all
	end

end