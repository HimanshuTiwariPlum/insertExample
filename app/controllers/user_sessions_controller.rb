class UserSessionsController < ApplicationController
   
  def new
    @user_session = UserSession.new
  end

  def create
    
    @user_session = UserSession.new(params[:user_session])
   
    if @user_session.save
      flash[:notice] = "Successfully logged In."
      redirect_to books_url
    else
      render :action => 'new'
    end
  end

  def destroy
    @user_session = UserSession.find
    @user_session.destroy
    flash[:notice] = "Successfully Logged Out."
    redirect_to login_url
  end
end
