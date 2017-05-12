# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
require "json"

Dose.destroy_all
Ingredient.destroy_all

url = "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"

json_string = open(url).read

ingredients_data = JSON.parse(json_string)['drinks']

print "Creating ingredients)"
ingredients_data.each do |ingredient_data|
  Ingredient.create!(name:ingredient_data['strIngredient1'])

end

