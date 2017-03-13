class StaticPagesController < ApplicationController
  
  def show
    @user = User.find(parames[:id])
  end  
  
  def home
    @micropost = current_user.microposts.build if logged_in?
  end
end
