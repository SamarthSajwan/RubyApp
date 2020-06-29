class UsersController < ApplicationController


	def index
	end


	def new
		@user=User.new
		@users=User.all
	end

	def show
		@users=User.all

	end

	def delete
		@user=User.find(params[:id])
		@user.delete

		redirect_to show_user_path

	end

	def edit
		@user = User.find(params[:id])
  		unless @user
    		flash[:error] = "User not found"
    		redirect_to root_path
  end
	end

	def create
		@user=User.new(params.require(:user).permit(:name, :email, :phone))
		if @user.save
			redirect_to new_user_path
		end
	end

end
