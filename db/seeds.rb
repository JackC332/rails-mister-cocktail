# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.create(name: 'lemon')
Ingredient.create(name: 'ice')
Ingredient.create(name: 'mint leaves')

Cocktail.create(name: 'Bloody Mary')
Cocktail.create(name: 'Mojito')
Cocktail.create(name: 'Daiquiri')
Cocktail.create(name: 'Gin and Tonic')

Dose.create(description: '1.5 oz vodka, 0.5 oz peach schnapps, 1.5 oz pineapple juice, 1.5 oz cranberry juice')
Dose.create(description: '2.5 oz cognac, 0.5 oz Grand Marnier, 0.5 oz lemon juice')
Dose.create(description: '1 oz gin, 1 oz bitters, 1 oz vermouth')
Dose.create(description: '2 oz vodka, 3 oz ginger beer, 0.5 lime juice')
