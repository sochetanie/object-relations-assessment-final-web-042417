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
