class ActorController < ApplicationController
  def index
    @list_of_actors = Actor.all
    render({:template => "actor_template/index.html.erb"})
  end
  def actor_details
    #params looks like {"an_id"="42"}

    the_id = params.fetch("an_id")
    @the_actor = Actor.where({:id => the_id}).at(0)
    @characters = Character.where({:actor_id => the_id})
    render({:template => "actor_template/details.html.erb"})
  end
end
