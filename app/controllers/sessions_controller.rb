class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by(email: params[:email])

		if user.present? && user.authenticate(params[:password])
			cookies[:user_id] = user.id
			redirect_to root_path, notice: "Logged in Successfully"
		else
			flash[:alert] = 'Invalid email or password'
			render :new
		end
	end

	def destroy
		cookies[:user] = nil
		redirect_to root_path, notice: "Logged out"
	end
end