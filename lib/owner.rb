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
    Cat.all.select{|cat| cat.owner == self}
  end 
  
  def dogs
    Dog.all.select{|dog| dog.owner == self}
  end 
  
  def buy_cat(cat)
    Cat.new(cat, self)
  end 
  
  def buy_dog(dog)
    Dog.new(dog, self)
  end 
  
  # But does this update the owners dog array?
  def walk_dogs
    self.dogs.collect{|dog| dog.mood = "happy"}
  end 
  
  def feed_cats
    self.cats.collect{|cat| cat.mood = "happy"}
  end 
  
end