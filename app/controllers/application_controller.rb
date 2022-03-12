class ApplicationController < ActionController::Base
	before_action :set_current_user

	def set_current_user
		if cookies[:user]
			Current.user = User.find_by(id: cookies[:user])
		end
	end
end
