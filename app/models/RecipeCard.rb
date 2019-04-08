#User has many instances of Recipe Cards
class RecipeCard
  attr_reader :date, :user, :recipe, :rating
  @@all=[]
  def initialize(recipe, date, rating, user)
    @recipe = recipe
    @date = date
    @rating = rating
    @user = user
    @@all << self
  end
  def self.all
    @@all
  end
end
