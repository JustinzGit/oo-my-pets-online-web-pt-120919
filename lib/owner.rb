class Owner
  attr_reader :name, :species
  
  def initialize(name)
    @name = name 
  end 
  
  def species(species="human")
    @species = species
  end 
  
  def say_species
    "I am a #{self.species}."
  end 
  
end