class Owner

  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(name = nil, species = "human", pets)
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

  def buy_cat
    new_cat = Cat.new
    @pets << new_cat
  end

  def buy_dog
  end

  def buy_fish
  end




end
