class Alien

	attr_accessor :name, :language

	@@all = []

	def initialize(name, language)
		@name = name #String
		@language = language #String

		@@all << self
	end

	def populations
		Population.all.select do |pop|
			pop.alien == self
		end
	end

	def planets
		self.populations.map do |pop|
			pop.planet
		end
	end


	def self.all
		@@all
	end


end


# [1,2,3,4,5].select do |num|
# 	true
# end #=> [1,2,3,4,5]

# [1,2,3,4,5].select do |num|
# 	false
# end #=> []

# [1,2,3,4,5].select do |num|
# 	num > 3
# end #=> [4,5]