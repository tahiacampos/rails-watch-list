# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'
Movie.delete_all

url = 'http://tmdb.lewagon.com/movie/top_rated'
response_serialized = URI.open(url).read
response = JSON.parse(response_serialized)
movies = response["results"].sample(10)
movies.each do |movie|  
Movie.create(title: movie["title"], overview: movie["overview"] , poster_url: movie["poster_path"], rating: movie["vote_average"])
p movie
end