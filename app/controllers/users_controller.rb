class UsersController < ApplicationController
     
     def index
      @users =User.all
       
     end
  def new
    @user = User.new
  end

  def create
   
    @user = User.new(params[:user])
    if @user.save
     
      flash[:notice] = "Registration Successfully ."
      redirect_to new_user_session_url
    else
      render :action => 'new'
    end
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      flash[:notice] = "Successfully updated Profile."
      redirect_to root_url
    else
      render :action => 'edit'
    end
  end
end
