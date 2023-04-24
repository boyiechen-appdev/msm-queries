class DirectorsController < ApplicationController
  def index

    @list_of_directors = Director.all

    render({ :template => "directors_templates/index" })
  end

  def wisest
    @oldest = Director.where.not({ :dob => nil }).order({ :dob => :asc }).at(0)
    render({ :template => "directors_templates/eldest" })
  end

  def youngest
    @youngest = Director.where.not({ :dob => nil }).order({ :dob => :desc }).at(0)
    render({ :template => "directors_templates/youngest" })
  end

  def director_details

    @the_id = params.fetch("an_id")
    @the_director = Director.where({:id => @the_id}).at(0)

    # movie that is directed by the director
    @filmography = Movie.where({ :director_id => @the_director.id })


    render({ :template => "directors_templates/show" })
  end

  # def young_elder
  #   @director_type = params.fetch("young_elder")
  #   @oldest = Director.where.not({ :dob => nil }).order({ :dob => :asc }).at(0)
  #   @youngest = Director.where.not({ :dob => nil }).order({ :dob => :desc }).at(0)
  #   render({ :template => "directors_templates/young_elder" })
  # end

end
