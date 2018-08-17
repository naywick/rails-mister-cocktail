# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Dose.destroy_all
Ingredient.destroy_all
Cocktail.destroy_all

require 'open-uri'
require 'json'
puts "Starting seeding"

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

serialized_ingredients = open(url).read

ingredient = JSON.parse(serialized_ingredients)

ingredient["drinks"].each do |ingredient|
  Ingredient.create(name: ingredient['strIngredient1'])
end

puts "Finished seeding"
