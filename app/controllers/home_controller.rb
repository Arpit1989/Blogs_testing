class HomeController < ApplicationController
  
  def index
  @users = User.all
  
  puts "================================================================="
  puts @users
  puts @name
  end
  def show
    @user = User.find(params[:id])
  end
end
