require './AbstractPizza.rb'

class PepperoniPolenta < AbstractPizza

  def initialize(menu, ingredients)
    super
  end

  def preheat_oven
    puts "Preheat oven 425 degrees."
  end

  def add_ingredients()
    @ingredients.each do |x|
      puts "Add #{x}"
    end
  end

  def bake_pizza()
    puts "Bake for 10 minutes."
    puts "Sprinkle Cheese."
    puts "Bake for additional 2-3 minutes."
  end

end

menu = "Pepperoni Polenta"
ingredients = ["polenta", "salt", "olive oil", "sliced onion", "dried green bell pepper", "marinara sauce", "pepperoni", "tomato",
  "oregano", "mozzaretta cheese"]


pepperoniPolenta = PepperoniPolenta.new(menu, ingredients)
pepperoniPolenta.prepare_pizza
