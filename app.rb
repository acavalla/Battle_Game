require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'

  get "/" do
    erb :index
  end

  post "/names" do
    $game = Game.new(Player.new(params[:player_1_name]), Player.new(params[:player_2_name]))
    redirect "/play"
  end

  get "/play" do
    @game = $game
    erb :play
  end

  get "/attack" do
    @game = $game
    @game.attack(@game.player_2)
    redirect "/lose" if @game.lose
    erb :attack
  end

  get "/switch" do
    @game = $game
    @game.attack(@game.player_1)
    redirect "/lose" if @game.lose
    erb :switch
  end

  get "/lose" do
    @game = $game
    erb :lose
  end

  run! if app_file == $0
end
