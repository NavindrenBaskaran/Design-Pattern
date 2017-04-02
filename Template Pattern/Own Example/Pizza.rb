class Pizza

  def initialize(menu, ingredients)
    @menu = menu
    @ingredients = ingredients
  end

  def output_pizza
    if @menu == "Pepperoni Polenta"
      puts "Preheat oven 450 degrees."
    elsif @menu == "Barbeque Chicken"
      puts "Preheat oven 425 degrees."
    elsif @menu == "Four Cheese Margherita"
      puts "Preheat oven 400 degrees."
    end

    @ingredients.each do |x|
      puts "Add #{x}"
    end

    if @menu == "Pepperoni Polenta"
      puts "Bake for 10 minutes."
      puts "Sprinkle Cheese."
      puts "Bake for additional 2-3 minutes."
    elsif @menu == "Barbeque Chicken"
      puts "Bake for 15 minutes."
      puts "Sprinkle with fresh cilantro."
      puts "Cool down for 10 minutes."
    elsif @menu == "Four Cheese Margherita"
      puts "Bake for 10 minutes"
    end

    puts "Pizza ready to be served."
  end
end

menu = "Pepperoni Polenta"
ingredients = ["polenta", "salt", "olive oil", "sliced onion", "dried green bell pepper", "marinara sauce", "pepperoni", "tomato",
  "oregano", "mozzaretta cheese"]

menu1 = "Barbeque Chicken"
ingredients1 = ["sesame oil", "boneless chicken breast", "barbeque sauce", "marinara sauce", "mozzaretta cheese", "sliced red onion", "fresh cilantro"]

menu2 = "Four Cheese Margherita"
ingredients2 = ["olive oil", "minced garlic", "seasalt garlic", "tomatoes", "mozzaretta cheese", "fontina cheese", "parmeson cheese", "feta cheese",
  "basil leaves"]


pz = Pizza.new(menu, ingredients)
pz.output_pizza
