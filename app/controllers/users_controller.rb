class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
   @user = User.find(params[:id])
   @objectives = @user.objectives

   favorites = Favorite.where(user_id: current_user.id).pluck(:objective_id)
   @favorite_list = Objective.find(favorites)
  end

end
