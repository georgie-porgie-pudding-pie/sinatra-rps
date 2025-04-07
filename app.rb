require "sinatra"
require "sinatra/reloader"
require "rake"

options = ["rock", "paper", "scissors"]

get("/") do
  erb(:home)
end

get("/rock") do
  @play = options.sample
  erb(:rock)
end

get("/paper") do
  @play = options.sample
  erb(:paper)
end

get("/scissors") do
  @play = options.sample
  erb(:scissors)
end
