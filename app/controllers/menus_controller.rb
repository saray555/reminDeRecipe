class MenusController < ApplicationController
  def show
    @menu = Menu.find(params[:id])
    @user = @menu.user
    #redirect_to 'index'
    @recipes = @menu.recipes
    @recipe = Recipe.new
  end

  def index
    @user = current_user
  end

  def new
    @menu = current_user.menus.build
  end
  
  def create
    @menu = current_user.menus.build(menu_params)
    p @menu.inspect
    if @menu.save
      flash[:success] = "Saved successfully."
      redirect_to menus_path(@menu)
    else
      render 'new'
    end
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :email)
  end  
  
  def menu_params
    params.require(:menu).permit(:menu_date, :menu_name, :description)
  end

end