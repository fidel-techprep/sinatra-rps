require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:rules)
end

get("/:choice") do
  @lose_to = { "rock" => "paper", "paper" => "scissors", "scissors" => "rock" } 
  @we = params.fetch("choice")
  @they = @lose_to.keys.sample
  @result = "tied"
  
  unless @we == @they
   @result =  @lose_to[@we] == @they ? "lost" : "won"
  end
  
  erb(:play)
end
