class SessionsController < ApplicationController
  def new
  end
  def create  
    
    user = User.find_by_email(params[:session][:email])
    if user && user.password == params[:session][:password]
      flash[:success] = "Login Scucessful!"   
       session[:user] = user.id
       redirect_to users_path
    else
      flash[:error] = "Invalid error"
      render 'new'
    end
  end
  def three_login
    auth = request.env["omniauth.auth"]
    user = User.find_by_omniauth(auth)
    session[:user] = user.id
    redirect_to users_path
  end

  def destroy
    logged_out
    redirect_to root_path

  end
end
