require 'pry'

# Add your code here
class Dog  
  @@all = [] 
  
  attr_accessor :name
  
  def initialize(name) 
    @name = name
    self.save
  end
  
  def self.all
    @@all 
  end
  
  def self.print_all 
    @@all.each {|dog|
      puts dog.name
    }
  end
  
  def self.clear_all 
    @@all.clear
  end
  
  def save 
    @@all << self 
  end
end

dog1 = Dog.new("Shadow")
dog2 = Dog.new("Sleepy")
dog3 = Dog.new("Max")