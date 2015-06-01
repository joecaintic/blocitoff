class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.authenticate(params[:email], params[:password], params[:username])
    if user
      
      if user.email_confirmed
        sign_in user
        redirect_back_or user
      else
        :notice => "Please activate your account by following the 
        instructions in the account confirmation email you received to proceed"
        render "new"
      end

      session[:user_id] = user.user_id
      redirect_to root_url, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end

end
