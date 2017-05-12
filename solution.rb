# Please copy/paste all three classes into this file to submit your solution!
class Movie
  attr_accessor :title, :ratings, :viewers

  @@all = []

  def initialize(title)
    self.title = title
    @@all << self
  end

  def self.all
  	@@all
  end

  def self.find_by_title(title)
    self.all.find {|movie| movie.title == title}
  end

  def ratings
  	Rating.select {|rating| rating.movie == self}
  end

  def viewers
  	self.rating.map {|rating| rating.viewer}
  end

  def average_rating
    sum = 0
    self.ratings.each do |rating|
      sum += rating.score
      sum / self.ratings.size
    end
  end


end


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



class Viewer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    # @name = name
    @first_name, @last_name = first_name, last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
  	@@all 
  end

  def self.find_by_name(name)
  	self.all.find {|person| person.full_name == name}
  end

  def self.create_rating(movie, score)
  	Rating.new(movie, score, self)
  end


end

