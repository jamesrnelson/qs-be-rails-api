# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

meal1 = Meal.create(name: 'Breakfast')
meal2 = Meal.create(name: 'Snack')
meal3 = Meal.create(name: 'Lunch')
meal4 = Meal.create(name: 'Dinner')

food1 = Food.create(name: 'Banana', calories: 150)
food2 = Food.create(name: 'Yogurt', calories: 550)
food3 = Food.create(name: 'Apple', calories: 220)
food4 = Food.create(name: 'Gum', calories: 50)
food5 = Food.create(name: 'Cheese', calories: 400)
food6 = Food.create(name: 'Bagel Bites - Four Cheese', calories: 650)
food7 = Food.create(name: 'Chicken Burrito', calories: 800)

MealFood.create(meal_id: meal1.id, food_id: food1.id)
MealFood.create(meal_id: meal1.id, food_id: food2.id)
MealFood.create(meal_id: meal1.id, food_id: food3.id)

MealFood.create(meal_id: meal2.id, food_id: food1.id)
MealFood.create(meal_id: meal2.id, food_id: food4.id)
MealFood.create(meal_id: meal2.id, food_id: food5.id)

MealFood.create(meal_id: meal3.id, food_id: food6.id)
MealFood.create(meal_id: meal3.id, food_id: food7.id)
MealFood.create(meal_id: meal3.id, food_id: food3.id)

MealFood.create(meal_id: meal4.id, food_id: food1.id)
MealFood.create(meal_id: meal4.id, food_id: food6.id)
MealFood.create(meal_id: meal4.id, food_id: food7.id)
