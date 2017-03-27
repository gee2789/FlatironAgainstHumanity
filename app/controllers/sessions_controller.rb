class SessionsController < ApplicationController

	def create
		@account = Account.find_by(id: params[:id])
		if @account && @account.authenticate
			sessions[:account_id] = @account.id
		else
			flash[:alert] = "Yoooo"
			redirect_to '/'
		end
	end

	def destroy
		session.destroy
		redirect_to '/'
	end

	private
	def session_params
		params.require(:account).permit(:username, :password, :password_confirmation)
	end
end
