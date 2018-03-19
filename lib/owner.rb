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

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end

  def play_with_cats
    @pets[:cats].each { |cat| cat.mood=("happy") }
  end

  def walk_dogs
    @pets[:dogs].each { |dog| dog.mood=("happy") }
  end

  def feed_fish
    @pets[:fishes].each { |fish| fish.mood=("happy") }
  end

  def sell_pets
    @pets.each do |species|
      @pets.species.each { |pet| pet.mood=("nervous") }
    end
  end



end
