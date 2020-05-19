class AddDefaultCategories < ActiveRecord::Migration[6.0]
  def change
    Category.create(name: "Appetizer")
    Category.create(name: "Salad")
    Category.create(name: "Main Dish")
    Category.create(name: "Side")
    Category.create(name: "Dessert")
    Category.create(name: "Breakfast")
    Category.create(name: "Other")
  end
end
