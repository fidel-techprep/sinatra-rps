require "sinatra"
require "sinatra/reloader"

options = ["rock", "paper", "scissors"]

get("/") do
  erb(:rules)
end

get("/rock") do
  @we = "rock"
  @they = options.sample
  @result = "tied"

  case @they
  when "scissors" then @result = "won"
  when "paper" then @result = "lost"
  end

  erb(:play)
end

get("/paper") do
  @we = "paper"
  @they = options.sample
  @result = "tied"

  case @they
  when "scissors" then @result = "lost"
  when "rock" then @result = "won"
  end

  erb(:play)
end

get("/scissors") do
  @we = "scissors"
  @they = options.sample
  @result = "tied"

  case @they
  when "rock" then @result = "lost"
  when "paper" then @result = "won"
  end

  erb(:play)
end
