# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'open-uri'
# # https://github.com/flori/json
# require 'json'
# # http://stackoverflow.com/questions/9008847/what-is-difference-between-p-and-pp
# require 'pp'

# request_uri = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
# request_query = ''
# url = "#{request_uri}#{request_query}"
# buffer = open(url).read
# result = JSON.parse(buffer)

# result.each do |user|
#   puts "#{strIngredient['id']}\t"

# end

# puts "Finished!\n\n"

Cocktail.create(name: "MDMA")
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "ammoniac")
