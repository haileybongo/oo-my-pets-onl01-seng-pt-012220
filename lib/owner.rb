class Owner
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human" 
    @@all << self 
  end
  
  def say_species
    return "I am a #{@species}."
  end
  
  def self.all 
    @@all
  end
  
  def self.count
    @@all.size 
  end
  
  def self.reset_all
    @@all = []
  end
  
  def cats 
    my_cats = []
    my_cats = Cats.all.select {|cat| cat.owner == self}
    my_cats
  end
  
  def dogs 
    my_dogs = []
    my_dogs = Dogs.all.select {|dog| dog.owner == self}
    my_dogs
  end
    
    
    
    
end