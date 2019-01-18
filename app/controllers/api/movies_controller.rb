class Api::MoviesController < ApplicationController

  def movies_method
    @movies = Movie.all
    render 'movies.json.jbuilder'
  end

  def avator
    @avator = Movie.find_by(title: 'Avator')
    render 'avator.json.jbuilder'
  end

  def titanic
    @titanic = Movie.find_by(title: 'Titanic')
    render 'titanic.json.jbuilder'
  end

  def star_wars_awaken
    @star_wars_awaken = Movie.find_by(title: 'Star Wars: The Force Awakens')
    render 'star_wars_awaken.json.jbuilder'
  end

  def avengers_infinity_war
    @avengers_infinity_war = Movie.find_by(title: 'Avengers: Infinity War')
    render 'avengers_infinity_war.json.jbuilder'
  end
end