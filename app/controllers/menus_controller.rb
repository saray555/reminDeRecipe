class MenusController < ApplicationController
  def show 
    #@menu = Menu.find(params[:id])
    #@microposts = @user.microposts.order(created_at: :desc)
  end

  def new
#    @menu = Menu.new
  end
  
  def create
#    @menu = Menu.new(menu_params)
#    if @menu.save
#      flash[:success] = "Yaaaay!"
      #redirect_to menu_index_path(@menu)
    #else
      #render 'new'
#    end
  end
  
#  private

#  def user_params
#    params.require(:user).permit(:name, :email, :password,
#                                 :password_confirmation)
#  end  

end
