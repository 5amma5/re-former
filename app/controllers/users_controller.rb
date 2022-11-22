class UsersController < ApplicationController
  def new
    @user = User.new()
  end

  def create
    # accept top level User attributes
    # @user = User.new(username: params[:username], email: params[:email], password: params[:password])
    
    # accept nested User attributes
    @user = User.new(user_params)
    
    if @user.save
      redirect_to new_user_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private    
    def user_params
      params.require(:user).permit(:username, :email, :password)
    end
end
