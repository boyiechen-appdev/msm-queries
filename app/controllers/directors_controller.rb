class DirectorsController < ApplicationController
  def index

    @list_of_directors = Director.all

    render({ :template => "directors_templates/index" })
  end

  # def wisest
  #   @oldest = Director.where.not({ :dob => nil }).order({ :dob => :asc }).at(0)
  #   render({ :template => "directors_templates/eldest" })
  # end

  def young_elder
    @director_type = params.fetch("young_elder")
    @oldest = Director.where.not({ :dob => nil }).order({ :dob => :asc }).at(0)
    @youngest = Director.where.not({ :dob => nil }).order({ :dob => :desc }).at(0)
    render({ :template => "directors_templates/young_elder" })
  end

end
