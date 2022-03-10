class SessionsController < ApplicationController
	def destroy
		cookies[:user] = nil
		redirect_to root_path, notice: "Logged out"
	end
end