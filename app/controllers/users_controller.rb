class UsersController < ApplicationController
  def new
    @user = User.new
  end

  #def create
   # @user = User.new(user_params)
    #if @user.save
     # UserMailer.registration_confirmation(@user).deliver
      #redirect_to root_url, :notice => "Please check your email to complete registration!"
    #else
     # render "new"
    #end
  #end

  #def confirm_email
   # user = User.find_by_confirm_token(params[:id])
    #if user
     # user.email_activate
      #flash[:success] = "Welcome! Please sign in to continue."
      #redirect_to root_url
    #else
     # flash[:error] = "Sorry. User does not exist"
     # redirect_to root_url
    #end
end

