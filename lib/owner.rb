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
  
  def self.reset_all
    @@all.clear
  end 
  
  def species(species="human")
    @species = species
  end 
  
  def say_species
    "I am a #{self.species}."
  end 

  def cats
    Cat.all.select{|cat| cat.owner.name == self.name}
  end 
  
  def dogs
    Dog.all.select{|dog| dog.owner == self}
  end 
  
end