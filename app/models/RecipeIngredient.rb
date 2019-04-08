#Single Source of Truth, Relationship through user and Recipe
class RecipeIngredient
  attr_reader :ingredient, :recipe
  @@all=[]
  def initialize
    @@all << self
  end
  def self.all
    @@all
  end
end
