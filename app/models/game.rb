class Game < ApplicationRecord
  has_many :activegames
  has_many :accounts, through: :activegames
end
