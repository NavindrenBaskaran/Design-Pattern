require './AbstractPizza.rb'

class FourCheeseMargherita < AbstractPizza
  def initialize(menu, ingredients)
    super
  end

  def preheat_oven
    puts "Preheat oven 400 degrees."
  end

  def add_ingredients()
    @ingredients.each do |x|
      puts "Add #{x}"
    end
  end

  def bake_pizza()
    puts "Bake for 10 minutes"
  end

end

menu = "Four Cheese Margherita"
ingredients = ["olive oil", "minced garlic", "seasalt garlic", "tomatoes", "mozzaretta cheese", "fontina cheese", "parmeson cheese", "feta cheese",
  "basil leaves"]

fourCheeseMargherita = FourCheeseMargherita.new(menu, ingredients)
fourCheeseMargherita.prepare_pizza
