class MainController < ApplicationController
	def index
		if cookies[:user]
			@user = User.find_by(id: cookies[:user])
		end
	end
end
