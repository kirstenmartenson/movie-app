class Api::ActorsController < ApplicationController

  def actor
    @actor = Actor.find_by(id: 2) # Tom Cruise in Mission impossible
    render 'actor.json.jbuilder'
  end

end