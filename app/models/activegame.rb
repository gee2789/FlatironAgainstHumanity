class Activegame < ApplicationRecord
  belongs_to :game
  belongs_to :account
  after_create :player_count



  def player_count
    @order_count = Activegame.group(:game_id).count
    self.order = @order_count[self.game_id]+1
    self.save
  end

end
