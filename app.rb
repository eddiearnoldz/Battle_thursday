require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'

class BattleApp < Sinatra::Base
  configure :devlopment do
    register Sinatra::Reloader
  end

# enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_one = Player.new(params[:player_one])
    $player_two = Player.new(params[:player_two])
    $game = Game.new($player_one, $player_two)
    redirect '/play'
  end

  get '/play' do 
    @player_one = $player_one
    @player_two = $player_two
    erb :play
  end

  post '/attack' do
    @player_one = $player_one
    @player_two = $player_two
    $game.attack(@player_two)
   # erb :attack
    redirect '/play'
  end

  run! if @app_file == $0
end