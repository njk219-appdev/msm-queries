class MoviesController < ApplicationController
  def movieindex
    @list_of_movies = Movie.all
    render({:template => "movie_template/movieindex.html.erb"})
  end
  def movie_details
    #params looks like {"an_id"="42"}

    the_id = params.fetch("an_id")
    @the_movie = Movie.where({:id => the_id}).at(0)
    render({:template => "movie_template/details.html.erb"})
  end
end
