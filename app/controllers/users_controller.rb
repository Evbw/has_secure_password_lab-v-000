class UsersController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:new, :create]

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

  private

    def user_params
      params.require(:user).permit(:name, :password, :password_confirmation)

end
