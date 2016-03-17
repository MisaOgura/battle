require 'sinatra/base'
require_relative 'lib/player.rb'
require_relative 'lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:player_one])
    player2 = Player.new(params[:player_two])
    $game = Game.new(player1,player2)
    redirect to('/play')
  end

  get '/play' do
    @player1_name = $game.players[0].name
    @player2_name = $game.players[1].name
    @player2_hit_points = $game.players[1].hit_points
    erb(:play)
  end

  get '/attack' do
    @player1 = $game.players[0]
    @player2 = $game.players[1]
    @player1_name = @player1.name
    @player2_name = @player2.name
    @player2_hit_points = @player2.hit_points

    @player1.hugs(@player2)

    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
