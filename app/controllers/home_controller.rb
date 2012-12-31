class HomeController < ApplicationController
  
  def index
  @users = User.all
  
  puts "================================================================="
  @users.each do |f| 
  p f.name	
  p f.roles
end
  end
  def show
    @user = User.find(params[:id])
  end
end
