class Owner
  attr_accessor :owner 
  attr_reader :name, :species, :my_cats, :my_dogs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human" 
    @@all << self 
    @my_cats = []
    @my_dogs = []
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
    Cat.all.select {|cat| cat.owner == self}
  end
  
  def dogs 
    Dog.all.select {|dog| dog.owner == self}
  end
  
  def buy_cat(name)
    my_cats << Cat.new(name,self)
  end
  
  def buy_dog(name)
    my_dogs << Dog.new(name,self)
  end
  
  def self.walk_dogs
    dogs.map |dog|
      dog.mood = "happy"
    end
  end
      
  
    
end