#YOUR CODE GOES HERE
class Ingredient
  def initialize(quantity, unit, name)
    @quantity = quantity
    @unit = unit
    @name = name
  end

  def summary
    puts "#{@quantity} #{@unit} #{@name}"
  end
end

class Recipe
  def initialize(name, instructions, ingredients)
    @name = name
    @instructions = instructions
    @ingredients = ingredients
  end

  def summary
    puts "Name: #{@name}"
    puts
    puts "Ingredients"
    @ingredients.each do |ingredient|
      print "- "
      ingredient.summary
    end
    puts
    puts "Instructions"
    instruction_step = 0
    @instructions.each do |step|
      puts "#{instruction_step + 1}. #{step}"
      instruction_step += 1
    end
    puts
  end
end

ingredient = Ingredient.new("0.75", "cup", "all purpose baking flour")
ingredient.summary

ingredients_1 = [
  Ingredient.new("0.75", "cup", "all purpose baking flour"),
  Ingredient.new("0.25", "cup", "coconut flour"),
  Ingredient.new("0.75", "teaspoon", "baking powder"),
  Ingredient.new("1.0", "teaspoon", "baking soda"),
  Ingredient.new("0.25", "teaspoon", "salt"),
  Ingredient.new("2", "tablespoons", "chia seeds (mixed with water)"),
  Ingredient.new("0.66", "cup", "water"),
  Ingredient.new("1.33", "cup", "So Delicious Dairy Free Vanilla Coconut Milk"),
  Ingredient.new("0.50", "cup", "coconut oil, warmed to liquefy"),
  Ingredient.new("0.25", "cup", "agave nectar"),
  Ingredient.new("1", "teaspoon", "apple cider vinegar"),
  Ingredient.new("1", "teaspoon", "vanilla extract"),
  Ingredient.new("0.50", "cup", "mini chocolate chips")
]

instructions_1 = [
  "Preheat the oven to 350 degrees.",
  "Sift together the dry ingredients (GF flour through salt) and set aside.",
  "Make the chia seed mixture and set aside.*",
  "Mix all remaining liquid ingredients together (water through vanilla extract).",
  "Pour the wet ingredients into the dry ingredients while stirring rapidly, and then add the chia seed mixture and chocolate chips.",
  "Allow batter to rest for 15 minutes.",
  "Place the cupcake liners into a muffin tin.",
  "Scoop the batter into each of the liners.",
  "Bake for 15 to 20 minutes."
]

ingredients_2 = [
  Ingredient.new("2", "slices", "Italian bread"),
  Ingredient.new("1", "tablespoon", "softened butter, divided"),
  Ingredient.new("1", "tablespoon", "prepared pesto sauce, divided"),
  Ingredient.new("1", "slice", "provolone cheese"),
  Ingredient.new("2", "slices", "tomato"),
  Ingredient.new("1", "slices", "American cheese")
]

instructions_2 = [
  "Spread one side of a slice of bread with butter, and place it, buttered side down, into a nonstick skillet over medium heat.",
  "Spread the top of the bread slice in the skillet with half the pesto sauce, and place a slice of provolone cheese, the tomato slices, and the slice of American cheese onto the pesto.",
  "Spread remaining pesto sauce on one side of the second slice of bread, and place the bread slice, pesto side down, onto the sandwich. Butter the top side of the sandwich.",
  "Gently fry the sandwich, flipping once, until both sides of the bread are golden brown and the cheese has melted, about 5 minutes per side."
]

recipe_1 = Recipe.new("Coconut Chocolate Chip Cupcakes", instructions_1, ingredients_1)
recipe_1.summary

recipe_2 = Recipe.new("Pesto Grilled Cheese Sandwich", instructions_2, ingredients_2)
recipe_2.summary
