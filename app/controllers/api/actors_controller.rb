class Api::ActorsController < ApplicationController

  def actor
    @actor = Actor.find_by(id: 2) # Tom Cruise in Mission impossible
    render 'actor.json.jbuilder'
  end

  def create
    @actor = Actor.new(
      first_name: params["first_name"],
      last_name: params["last_name"],
      known_for: params["known_for"],
      gender: params["gender"],
      age: params["age"]
      )
    
    @actor.save
    render 'create.json.jbuilder'
  end

  def update
    @actor.first_name = params["first_name"] || @actor.first_name
    @actor.last_name = params["last_name"] || @actor.last_name
    @actor.known_for = params["known_for"] || @actor.known_for
    @actor.gender = params["gender"] || @actor.gender
    @actor.age = params["age"] || @actor.age

    @actor.save
    render 'show.json.jbuilder'
  end
end