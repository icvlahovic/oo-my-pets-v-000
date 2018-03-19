class Owner

  attr_accessor :pets
  attr_reader :name, :species
  @@all = []

  def initialize(name, species, pets)
    @name = name
    @species = species
    @pets = {cats: [], dogs: [], fishes: []}
  end

  def self.all
    @@all
  end

end
