class AbstractPizza

  def initialize(menu, ingredients)
    @menu = menu
    @ingredients  = ingredients
  end

  def prepare_pizza
    preheat_oven
    add_ingredients
    bake_pizza
    serve
  end

  def preheat_oven() end
  def add_ingredients() end
  def bake_pizza() end
  def serve
    puts "Pizza ready to be served."
  end
end
