class UsersController < ApplicationController

	skip_filter :ensure_logged_in

	def new
		@new_user = User.new
	end

	def create
		@new_user = User.new(user_params)
		if @new_user.save
			redirect_to login_path, notice: "Signup succesful!"
		else
			render new_user_path, notice: "Something went wrong"
		end
	end

	private

	def user_params
		params.require(:user).permit!
	end

end