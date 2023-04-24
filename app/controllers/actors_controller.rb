class ActorsController < ApplicationController
  def index

    @list_of_actors = Actor.all

    render({ :template => "actors_templates/index" })
  end

  def actor_details

    @the_id = params.fetch("an_id")
    @the_actor = Actor.where({:id => @the_id}).at(0)

    # movie that this actor play
    @filmography = Character.where({ :actor_id => @the_actor.id })


    render({ :template => "actors_templates/show" })
  end
end
