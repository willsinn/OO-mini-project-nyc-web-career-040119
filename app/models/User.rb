#User has many allergies
class User
  attr_accessor :recipes, :name, :allergens
  @@all=[]
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
    Recipe.all.select {|recipe| recipe.user == self }
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(recipe, date, rating, self)
  end

  def declare_allergy(ingredient)
    self.allergens = Allergy.new(ingredient)
  end

  def top_three_recipes
    recipes.sort_by {|recipe| recipe.rating}[0..2]
  end

  def most_recent_recipe
    recipes.last
  end

end
