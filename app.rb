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
    p $game.players[0].turn
    p $game.players[1].turn
    @player1_name = $game.players[0].name
    @player2_name = $game.players[1].name
    @player1_hit_points = $game.players[0].hit_points
    @player2_hit_points = $game.players[1].hit_points
    @hugger_name = $game.hugger.name
    erb(:play)
  end

  get '/attack' do
    @hugger_name = $game.hugger.name
    @huggee_name = $game.huggee.name
    @player1 = $game.players[0]
    @player2 = $game.players[1]
    @player2_hit_points = @player2.hit_points
    @hugger = $game.hugger
    @huggee = $game.huggee
    @hugger.hugs(@huggee)
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
