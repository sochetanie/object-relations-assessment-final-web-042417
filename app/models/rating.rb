class Rating
  attr_accessor :score, :viewer, :movie

  @@all = []

	def initialize(viewer, movie, score)
		@viewer, @movie, @score = viewer, movie, score
		@@all << self
	end

	def self.all
		@@all
	end

end
