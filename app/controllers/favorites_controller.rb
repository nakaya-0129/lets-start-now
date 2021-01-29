class FavoritesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_objective

   def create
    user_id= current_user
    if Favorite.create(user_id: user.id, objective_id: objective_id.id)
      redirect_to objective_path
    else
      redirect_to objective_path
    end
   end

   def destroy
    user= current_user
    if favorite= Favorite.find_by(user_id: user.id, objective_id: objective.id)
      favorite.delete
      redirect_to objective_path(current_user)
    else
      redirect_to objective_path
    end
  end

    private
    def set_objective
      @objective = Objective.find(params[:objective_id])
    end

  end
