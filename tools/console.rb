require_relative '../config/environment.rb'

cake = Recipe.new("cake")
cake.add_ingredients(["milk", "eggs"])
steve = User.new("Steve")
steve.declare_allergy("eggs")
steve.add_recipe_card(cake, "today", "bad")

binding.pry
