require './AbstractPizza.rb'

class BarbequeChicken < AbstractPizza

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
    puts "Bake for 15 minutes."
  end

  def serve
    puts "Sprinkle with fresh cilantro."
    puts "Cool down for 10 minutes."
    puts "Pizza ready to be served."
  end
end


menu = "Barbeque Chicken"
ingredients = ["sesame oil", "boneless chicken breast", "barbeque sauce", "marinara sauce", "mozzaretta cheese", "sliced red onion", "fresh cilantro"]

bbqChicken = BarbequeChicken.new(menu, ingredients)
bbqChicken.prepare_pizza
