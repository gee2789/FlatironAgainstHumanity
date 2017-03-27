class Account < ApplicationRecord
  has_many :activegames
  has_many :games, through: :activegames
	has_secure_password
  validates :name, presence: true, uniqueness: true
  validates :password, presence: true, confirmation: true
  validate :is_old_enough?

  def is_old_enough?
  	seventeen_years_ago = Date.today - 17.years
  	birthday = @birthday.to_date
  	time_until_seventeen = (birthday - seventeen_years_ago).to_i
  	if seventeen_years_ago > birthday
  		return true
  	else
	  	errors.add(:age, "You're not old enough, come back in #{time_until_seventeen} days.")
  	end
  end

  attr_accessor :birthday
end
