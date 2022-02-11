require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'

class BattleApp < Sinatra::Base
  configure :devlopment do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_one]), Player.new(params[:player_two]))
    redirect '/play'
  end

  get '/play' do 
    @player_one = $game.player1
    @player_two = $game.player2
    @game = $game
    erb :play
  end

  post '/attack' do
    @player_one = $game.player1
    @player_two = $game.player2
    @game = $game
    @game.attack(@player_two)
    redirect '/play'
  end

  run! if @app_file == $0
end