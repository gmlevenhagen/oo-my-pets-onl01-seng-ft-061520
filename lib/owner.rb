class Owner
  attr_accessor :cats, :dogs
  attr_reader :species, :name

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @cats = []
    @dogs = []
  end

  def self.all
    @@all
  end

  def self.count
    self.all.length
  end

  def self.reset_all
    self.all.clear
  end

  def say_species
    return "I am a #{species}."
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def walk_dogs
    self.dogs.each { |dog| dog.mood = "happy" }
  end

  def feed_cats
     self.cats.each {|cat| cat.mood = "happy"}
   end

    def sell_pets
     name = Dog.new("Fido", @owner)
     name = Cat.new("Tabby", @owner)

     ["Fido", "Tabby"].each {|o| o.mood == "happy" }

     @owner.sell_pets

     ["Fido", "Tabby"].each { |o| o.mood == "nervous" }
    end


   def list_pets
     number_of_dogs = self.dogs.count
     number_of_cats = self.cats.count
     return "I have #{number_of_dogs} dog(s), and #{number_of_cats} cat(s)."
   end
 end
