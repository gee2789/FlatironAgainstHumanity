class Account < ApplicationRecord
  has_many :activegames
  has_many :games, through: :activegames
end
