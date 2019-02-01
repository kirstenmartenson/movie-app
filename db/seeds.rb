# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Actor.create!([
{first_name: "Kate", last_name: "Winslet", known_for: "Titanic", gender: "female", age: 43},
{first_name: "Zoe", last_name: "Saldana", known_for: "Avator", gender: "female", age: 40},
{first_name: "Harrison", last_name: "Ford", known_for: "Star Wars", gender: "male", age: 76},
{first_name: "Scarlett", last_name: "Johansson", known_for: "Avengers", gender: "female", age: 34}
])

Movie.create!([
  {title: "Titanic", year: 1997, plot: "The sinking of the RMS Titanic, it stars Leonardo DiCaprio and Kate Winslet as members of different social classes who fall in love aboard the ship during its ill-fated maiden voyage."},
  {title: "Avatar", year: 2009, plot: "The film is set in the mid-22nd century, when humans are colonizing Pandora, a lush habitable moon of a gas giant in the Alpha Centauri star system, in order to mine the mineral unobtanium, a room-temperature superconductor."},
  {title: "Star Wars: The Force Awakens", year: 2015, plot: "It is the first installment of the Star Wars sequel trilogy and the seventh installment of the main Star Wars film franchise, following Return of the Jedi."},
  {title: "Avengers: Infinity War", year: 2018, plot: "An unprecedented cinematic journey ten years in the making and spanning the entire Marvel Cinematic Universe, Marvel Studios’ Avengers: Infinity War brings to the screen the ultimate, deadliest showdown of all time."}
])
