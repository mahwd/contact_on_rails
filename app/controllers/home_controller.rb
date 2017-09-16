class HomeController < ApplicationController
  before_action :set_auth

  def check_admin
    if current_user and current_user.admin
      redirect_to(rails_admin_path)
    else
      redirect_to(root_path)
    end
  end

  def index

  end

  private
  def set_auth
    @auth = session[:omniauth] if session[:omniauth]
  end



end
