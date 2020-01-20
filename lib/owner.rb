class Owner
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def self.all
    @@all
  end 
  
  def self.count
    @@all.count
  end 
  
  def species(species="human")
    @species = species
  end 
  
  def say_species
    "I am a #{self.species}."
  end 
  
end