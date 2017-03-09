class StaticPagesController < ApplicationController
  
  def show
    @user = User.find(parames[:id])
  end  
  
  def home
    puts "AAAA"
  end
end
