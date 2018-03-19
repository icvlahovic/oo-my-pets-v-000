class Owner

  attr_accessor :pets
  attr_reader :name, :species
  @@all = []

  def initialize(name, species = "human", pets)
    @name = name
    @species = species
    @pets = {cats: [], dogs: [], fishes: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{self.species}."
  end



end
