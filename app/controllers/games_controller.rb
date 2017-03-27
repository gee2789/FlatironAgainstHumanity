class GamesController < ApplicationController

  def create
    @game = Game.create(game_params)
    @activegame = Activegame.create(game_id: @game.id, account_id: current_account)
    redirect_to game_path(@game)
  end

  def show
    @game = Game.find_by(id: params[:id])
    @new_deck = Deck.new
    binding.pry
  end

  private

  def game_params
    params.require(:game).permit(:name)
  end


end
