require 'sinatra'

# Renders the html file views/index.erb when you go to http://localhost:4567/
get '/' do
  erb :index
end

get '/rps' do
    @weapons = ["rock", "paper", "scissors"]
    @cmp_choice = @weapons.shuffle[0]
    @choice = params[:choice]  

    erb :rps
end