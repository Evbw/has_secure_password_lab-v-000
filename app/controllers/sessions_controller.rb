class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(name: params[:user][:name])

    if @user && @user.try(:authenticate, params[:user][:password])
      session[:user_id] = @user.id
    else
      redirect_to login_path
    end
  end

  def destroy
    session.delete :id if session[:user_id]
  end

end
