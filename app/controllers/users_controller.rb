class UsersController < ApplicationController
  before_filter :authenticate_user!
  
  def index

    if current_user.admin?
        @users = User.all 
    else
        redirect_to root_path
    end  
  
  end

  def new

    if current_user.admin?
      @user = User.new  
    else
        redirect_to root_path
    end
  	
  end

  def create
  	@user = User.new(user_params.merge(password_confirmation: user_params[:password]))
  	if @user.save
  		redirect_to root_path
  	else
  		render 'new'
  	end
  end

  private
  def user_params
  	params.require(:user).permit(:email, :password)
  end
end