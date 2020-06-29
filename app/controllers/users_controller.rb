class UsersController < ApplicationController


	def index
	end


	def new
		@user=User.new
		@users=User.all
	end


	def create
		@user=User.new(params.require(:user).permit(:name, :email, :phone))
		if @user.save
			redirect_to new_user_path
		end
	end

end
