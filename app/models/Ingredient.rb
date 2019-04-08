#Ingredient belongs to many recipe ingredients
class Ingredient
  attr_accessor :name
  @@all=[]
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def self.most_common_allergen
    Allergy.all.max_by {|allergen| freq[allergen]}
  end
end
