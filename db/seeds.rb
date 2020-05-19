User.destroy_all
Recipe.destroy_all
Note.destroy_all

User.reset_pk_sequence 
Recipe.reset_pk_sequence
Note.reset_pk_sequence 

User.create(email: "allison@gmail.com", password: "allison", first_name: "Allison")
User.create(email: "alan@gmail.com", password: "alan", first_name: "Alan")
User.create(email: "tobey@gmail.com", password: "tobey", first_name: "Tobey")
User.create(email: "linus@gmail.com", password: "linus", first_name: "Linus")

#Allison's recipes
Recipe.create(name: "Chicken Soup", 
                url: "https://thepioneerwoman.com/cooking/chunky-chicken-soup/", 
                img_url: "https://thepioneerwoman.com/wp-content/uploads/2011/12/chickensoup1.jpg?resize=630%2C420",
                category_id: Category.find_by(name: "Main Dish").id,
                user_id: 1
                )

Recipe.create(name: "Buffalo Chicken Fingers",
                url: "https://sallysbakingaddiction.com/crispy-baked-buffalo-chicken-fingers/",
                img_url: "https://cdn.sallysbakingaddiction.com/wp-content/uploads/2016/04/buffalo-chicken-fingers-3.jpg",
                category_id: Category.find_by(name: "Appetizer").id,
                user_id: 1
                )

Recipe.create(name: "Lemon Turmeric Cake",
                url: "https://cooking.nytimes.com/recipes/1020637-lemony-turmeric-tea-cake",
                img_url: "https://static01.nyt.com/images/2019/11/26/dining/ar-lemony-turmeric-tea-cake/merlin_165035286_7fd1d30a-adce-4f81-b363-9066f36471fe-articleLarge.jpg",
                category_id: Category.find_by(name: "Dessert").id,
                user_id: 1 
                )

#Alan's recipes
Recipe.create(name: "Pulled BBQ Chicken",
                url: "https://www.recipegirl.com/slow-cooker-pulled-barbecued-chicken-sandwiches/",
                img_url: "https://i2.wp.com/recipegirl.com/wp-content/uploads/2012/09/Slow-Cooker-Pulled-Barbecued-Chicken-Sandwiches-1.jpg",
                category_id: Category.find_by(name: "Main Dish").id,
                user_id: 2 
                )

Recipe.create(name: "Honeycrisp Kale Salad",
                url: "https://cookieandkate.com/autumn-kale-salad-with-fennel-honeycrisp-and-goat-cheese/",
                img_url: "https://cookieandkate.com/images/2018/10/autumn-kale-salad-with-fennel-honeycrisp-and-goat-cheese-3-2-550x824.jpg",
                category_id: Category.find_by(name: "Salad").id,
                user_id: 2 
                )

Recipe.create(name: "Golden Grahams S'mores",
                url: "https://www.bettycrocker.com/recipes/golden-grahams-smores/5a2f5df0-3c93-4bed-9fbe-20c1ebafc8b3",
                img_url: "https://images-gmi-pmc.edge-generalmills.com/1c59d39d-d3a6-4884-aad8-1e13926ca5f9.jpg",
                category_id: Category.find_by(name: "Dessert").id,
                user_id: 2 
                )

#Tobey's recipes
Recipe.create(name: "Chocolate Marshmallow Pie",
                url: "https://cookiesandcups.com/chocolate-marshmallow-pie/#respond",
                img_url: "https://cookiesandcups.com/wp-content/uploads/2015/05/chocolatemarshpieslice-570x839.jpg",
                category_id: Category.find_by(name: "Dessert").id,
                user_id: 3 
                )

Recipe.create(name: "Scalloped Potatoes",
                url: "https://www.gimmesomeoven.com/scalloped-potatoes-recipe/",
                img_url: "https://www.gimmesomeoven.com/wp-content/uploads/2018/03/Scalloped-Potatoes-Recipe-1-3.jpg",
                category_id: Category.find_by(name: "Side").id,
                user_id: 3 
                )

Recipe.create(name: "Honey Chicken and Sweet Potatoes",
                url: "https://www.lecremedelacrumb.com/honey-roasted-chicken-sweet-potatoes-skillet/",
                img_url: "https://www.lecremedelacrumb.com/wp-content/uploads/2017/10/honey-roasted-chicken-sweet-potatoes-skillet-102.jpg",
                category_id: Category.find_by(name: "Main Dish").id,
                user_id: 3 
                )

#Linus's recipes

Note.create([
    {content: "Great recipe, but definitely cut back on the salt", recipe_id: 1},
    {content: "These are so good, cut back on the hot sauce if your kids don't love spicy food", recipe_id: 2},
    {content: "The turmeric is really only for color (which is a beautiful yellow!)", recipe_id: 3},
    {content: "This cake was moist and delicious for a good 3 days", recipe_id: 3}
])