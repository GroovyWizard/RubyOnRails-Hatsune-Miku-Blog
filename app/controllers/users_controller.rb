class UsersController < ApplicationController

  def create 
    @user = User.new(user_params)
    if @user.save 
      log_in @user
      flash[:success] = "Welcome to Hatsune Miku blog! We tailored everything for you, hope you like it <3"  
      redirect_to @user
    else
      render 'new'
    end
  end 
  
  
  def show 
    @user = User.find(params[:id])
    
  end 
  
  
  def new
    @user = User.new
  end

  private   
    def user_params
      params.require(:user).permit(:name, :email, :password, 
                                   :password_confirmation)
    end 
  

end
