require 'pry'
class Dog 
  attr_accessor :name
  #binding.pry
  @@all = []
 # @@dog_names= []
  
  def initialize (name)
    #@@all<< self
    #@@dog_names<< name 
    @name= name
    save
  end 
  
  def save
    @@all<< self 
  end
  
  #def name
  #  @name = name
  #end
  
  def self.all
    @@all
  end
  
  def self.clear_all
      @@all.clear
  end 
  
  def self.print_all
     @@all.map do |dog|
       #binding.pry
      puts dog.name
     end
  end
  
end 