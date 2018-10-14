class UsersController < ApplicationController

  def homepage
  end

  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to ???
    else
      redirect to root_path
    end
  end

end
