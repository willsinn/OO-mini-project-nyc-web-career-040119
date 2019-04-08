#Recipe has many ingredients and users
class Recipe
  attr_accessor :name, :ingredients
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def most_popular
    RecipeCard.all.map {|recipecard| recipecard.recipe}.max_by {|recipe| freq[recipe]}
  end
  def users
    RecipeCard.all.select {|recipecard| recipecard.recipe. == self}.map {|recipecard| recipecard.user}
  end
  def allergens
    ingredients = Ingredient.all.select {|ingredient| ingredient}
    User.all.map {|user| user.allergens}.select {|allergen| allergen}
  end
  def add_ingredients(ingredients)
    self.ingredients = ingredients
    ingredients.each {|ingredient| Ingredient.new(ingredient)}
  end
end
