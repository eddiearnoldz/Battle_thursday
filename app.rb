require 'sinatra/base'
require 'sinatra/reloader'

class BattleApp < Sinatra::Base
  configure :devlopment do
    register Sinatra::Reloader
  end

  get '/' do
    "Hello Battle!"
  end

  run! if @app_file == $0
end