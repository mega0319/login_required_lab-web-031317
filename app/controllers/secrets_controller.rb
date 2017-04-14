class SecretsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:index, :login]





  def home
    @user = session[:current_user]
  end

  def show
  end

  def require_login
    redirect_to login_path unless session.include? :name
  end


end
