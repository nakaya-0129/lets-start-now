class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
   @user = User.find(params[:id])
   @objectives = @user.objectives
  end

end
