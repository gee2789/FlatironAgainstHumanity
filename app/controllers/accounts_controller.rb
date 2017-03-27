class AccountsController < ApplicationController
	def new
		@account = Account.new
	end

	def login
		@account = Account.new
		render '/accounts/login'
	end

	def create
		@account = Account.new(account_params)
		if Account.find_by(name: account_params[:name])
			flash[:alert] = "You sure you have an account bro? Try again."
			redirect_to root_path
		elsif @account.save
			flash[:alert] = "You've succesfully made an account"
			redirect_to root_path
		else
			flash[:alert] = "Something went wrong"
			redirect_to root_path
		end
	end

	private
	def account_params
		params.require(:account).permit(:name, :birthday, :password, :password_confirmation)
	end
end
