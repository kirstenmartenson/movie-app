class Api::MoviesController < ApplicationController

  # def movies_method
  #   @movies = Movie.all
  #   render 'movies.json.jbuilder'
  # end

  # def avator
  #   @avator = Movie.find_by(title: 'Avator')
  #   render 'avator.json.jbuilder'
  # end

  # def titanic
  #   @titanic = Movie.find_by(title: 'Titanic')
  #   render 'titanic.json.jbuilder'
  # end

  # def star_wars_awaken
  #   @star_wars_awaken = Movie.find_by(title: 'Star Wars: The Force Awakens')
  #   render 'star_wars_awaken.json.jbuilder'
  # end

  # def avengers_infinity_war
  #   @avengers_infinity_war = Movie.find_by(title: 'Avengers: Infinity War')
  #   render 'avengers_infinity_war.json.jbuilder'
  # end


def index
  @movies = Movie.where(english: true)
  render "index.json.jbuilder"
end

  def create 
    @movie = Movie.new(
      title: params["title"],
      year: params["year"],
      plot: params["plot"],
      director: params["director"],
      english: params["english"],
      )

    if @movie.save 
        render 'show.json.jbuilder' #happy path
    else
      render json: {errors: @movie.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @movie = Movie.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @movie = Movie.find(params[:id])

    @movie.title = params["title"] || @movie.title
    @movie.year = params["year"] || @movie.year
    @movie.plot = params["plot"] || @movie.plot
    @movie.director = params["director"] || @movie.director
    @movie.english = params["english"] || @movie.english
    
    if @movie.save 
        render 'show.json.jbuilder' #happy path
    else
      render json: {errors: @movie.errors.full_messages}, status: :unprocessable_entity
    end 
  end
  
  def destroy
      @movie = movie.find(params[:id])
      @movie.destroy
      render json: {message: "Movie has been successfully destroyed"}
  end
  
end