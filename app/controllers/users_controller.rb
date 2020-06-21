class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
  end

  def create
    User.create(user_params)
  end
  
  private
    def user_params
      params.requie(:user).permit(:nickname, :email, :encrypted_password, :last_name, :first_name, :last_name_reading, :first_name_reading, :birthday, :postcode, :prefecture, :city, :block, :building)
    end

end
