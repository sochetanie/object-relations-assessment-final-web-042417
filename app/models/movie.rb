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
  	Rating.select {|rating| ratings.movie == self}
  end

  def viewers
  	self.ratings.map {|rating| rating.viewer}
  end

  def average_rating
  	sum = 0
  	self.ratings.each do |rating|
  		sum += rating.score
  		sum / ratings.size
  	end
  end


end
