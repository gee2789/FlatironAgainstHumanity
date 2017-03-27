class Activegame < ApplicationRecord
  belongs_to :game
  belongs_to :account
  after_create :player_count



  def player_count

    @order_count = Activegame.where(game_id: self.game_id).count
    self.order = @order_count+1
    self.save
  end

end
