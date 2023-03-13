require 'open-uri'
require 'json'

Bookmark.destroy_all
Movie.destroy_all
List.destroy_all

list = List.create(name: "Films à voir")

Movie.create(title: "Bullet train")
Movie.create(title: "Joker")
Movie.create(title: "Requiem for a dream")
Movie.create(title: "Eternal Sunshine of the Spotless Mind")
Movie.create(title: "Burnt")
Movie.create(title: "Vol au dessus d'un nid de coucou")
Movie.create(title: "12 hommes en colère")
Movie.create(title: "Lost in translation")
Movie.create(title: "Sacré Graal")
Movie.create(title: "Babylon")
Movie.create(title: "Novembre")
Movie.create(title: "Climax")
Movie.create(title: "Revoir Paris")
Movie.create(title: "Everything everywhere all at once")
Movie.create(title: "La liste de Schindler")
Movie.create(title: "Les 7 samouraïs")
Movie.create(title: "Casablanca")
Movie.create(title: "La vie des autres")
Movie.create(title: "Une séparation")
Movie.create(title: "Le trou")
Movie.create(title: "Thelma et Louise")
Movie.create(title: "Bienvenue à Gattaca")
Movie.create(title: "Heat")
Movie.create(title: "Dallas Buyers Club")
Movie.create(title: "Elephant")
Movie.create(title: "Gran Torino")
Movie.create(title: "L’armée des ombres")
Movie.create(title: "Le dîner de cons")
Movie.create(title: "La traversée de Paris")
Movie.create(title: "Au revoir là-haut")
Movie.create(title: "Plein Soleil")
Movie.create(title: "Le prénom")
Movie.create(title: "Les Misérables")

movies = Movie.all

movies.each do |movie|
  Bookmark.create(movie: movie, list: list)
end


# file = JSON.parse(URI.open("http://tmdb.lewagon.com/movie/top_rated").read)

# file["results"].each do |movie|
#   Movie.create(title: movie["title"], overview: movie["overview"], poster_url: "https://image.tmdb.org/t/p/original/#{movie["poster_path"]}")
# end
