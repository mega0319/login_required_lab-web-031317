class SessionsController < ApplicationController

  def new
    redirect_to login_path
  end

  def login
  end

  def create
    if params[:name] == nil
      redirect_to login_path
    elsif params[:name] == ""
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to home_path
    end
  end

  def destroy
    session.delete :name
    redirect_to login_path
  end

end
