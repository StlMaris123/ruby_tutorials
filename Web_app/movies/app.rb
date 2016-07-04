require 'sinatra'
require 'movie'
get ('/movies') do
  #setup an array of  movies
  @movie = []
  @movie[0] = Movie .new
  @movie[0].title = "Jaws" 
  @movie[1] = Movie.new
  @movie[1].title = "Alien"
  @movie[2] = Movie.new
  @movie[2].title = "Terminator 2"
    erb :index
end
    get ('/movies/new') do
      erb :new
end
