 require 'pry'

class Owner
  @@all= []
  attr_accessor :pets, :dog, :cat
  attr_reader :species, :name
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @pets = {:dogs => [], :cats => []}
  end
  
  def self.all
    @@all
  end
  
  def say_species
    "I am a #{species}."
  end
  def self.count
    @@all.size
  end
  def self.reset_all
    @@all.clear
  end
  
  def cats
    Cat.all.select {|cat| cat.owner == self}
  end
  
  def dogs
    Dog.all.select {|dog| dog.owner == self}
    
    def buy_cat(name)
      cat = Cat.new(name)
      @pets[:cats] << cat
    end
  end
  end
end