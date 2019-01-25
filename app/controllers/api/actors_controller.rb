class Api::ActorsController < ApplicationController

  # def actor
  #   @actor = Actor.find_by(id: 2) # Tom Cruise in Mission impossible
  #   render 'actor.json.jbuilder'
  # end

  def index
    @actors = Actor.all
    render 'actors.json.jbuilder'
  end

  def query_actor
    id_number = params ["id"]
    @actor = Actor.find_by (id: id_number)
    render 'query_actor.json.jbuilder'
  end

  def create
    @actor = Actor.new(
      first_name: params["first_name"],
      last_name: params["last_name"],
      known_for: params["known_for"],
      gender: params["gender"],
      age: params["age"]
      )
    
    if @actor.save
      render 'create.json.jbuilder'
    else
      render json: {errors: @actor.errors.full_messages}, status: :unprocessable_entity
    end 
  end

  def show
    @actor = Actor.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @actor.first_name = params["first_name"] || @actor.first_name
    @actor.last_name = params["last_name"] || @actor.last_name
    @actor.known_for = params["known_for"] || @actor.known_for
    @actor.gender = params["gender"] || @actor.gender
    @actor.age = params["age"] || @actor.age

    if @actor.save
    render 'show.json.jbuilder'
    else
      render json: {errors: @actor.errors.full_messages}, status: :unprocessable_entity
    end
  end
end