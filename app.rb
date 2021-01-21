require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'

  get "/" do
    erb :index
  end

  post "/names" do
    session[:player1_name] = params[:player1_name]
    session[:player2_name] = params[:player2_name]
    redirect "/play"
  end

  get "/play" do
    @player1_name = session[:player1_name]
    @player2_name = session[:player2_name]
    erb :play
  end

  get "/attack" do
    @player1_name = session[:player1_name]
    @player2_name = session[:player2_name]
    erb :attack
  end

  run! if app_file == $0
end
