class SessionsController < ApplicationController


  def create
    auth = request.env["omniauth.auth"]
    session[:omniauth] = auth.except('extra')
    fb = FbAccount.sign_in_from_omniauth(auth)
    session[:user_id] =  fb.id
    redirect_to( new_form_path , alert: "Signed in")
  end

  def destroy
    session[:user_id] = nil
    session[:omniauth] = nil
    redirect_to root_url , notice: "Signed out"
  end

end
