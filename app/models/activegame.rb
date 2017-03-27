class Activegame < ApplicationRecord
  belongs_to :game
  belongs_to :account
  after_create :player_count


  def player_count
    self.increment(:order)
  end

end
