class UsersController < ApplicationController
  # def index
  #   @users = User.all
  # end

  # def new
  #   @user = User.new
  # end

  def show
    user = User.find(params[:id])
    @nickname = user.nickname
  end


  # def create
  #   @user = User.new
  # end
  

end
