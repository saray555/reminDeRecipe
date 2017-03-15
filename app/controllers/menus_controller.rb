class MenusController < ApplicationController
  def show 
    #@menu = Menu.find(params[:id])
    #@ = @user.microposts.order(created_at: :desc)
  end

  def new
    @menu = current_user.menus.build
  end
  
  def create
    @menu = current_user.menus.build(menu_params)
    p @menu.inspect
    if @menu.save
      flash[:success] = "Yaaaay!"
      redirect_to menu_path(@menu)
    else
      render 'new'
    end
  end
  
  def index 
      redirect_to users_path#(@menu)
  end
  
  private
  
  def menu_params
    params.require(:menu).permit(:menu_date, :menu_name, :description)
  end
end