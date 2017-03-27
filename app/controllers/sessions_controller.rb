class SessionsController < ApplicationController

	def create
		@account = Account.find_by(id: session_params[:id])
		if @account && @account.authenticate
			session[:account_id] = @account.id
		else
			flash[:alert] = "Awww man, I couldn't create your account"
			redirect_to '/'
		end
	end

	def destroy
		session.destroy
		redirect_to '/'
	end

	private
	def session_params
		params.require(:account).permit(:name, :password, :password_confirmation)
	end
end
