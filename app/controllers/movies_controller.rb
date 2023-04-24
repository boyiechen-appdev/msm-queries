class MoviesController < ApplicationController
  def index

    @list_of_movies = Movie.all

    render({ :template => "movies_templates/index" })
  end

  def movie_details

    @the_id = params.fetch("an_id")
    @the_movie = Movie.where({:id => @the_id}).at(0)

    # movie that is directed by the director

    render({ :template => "movies_templates/show" })
  end
end
