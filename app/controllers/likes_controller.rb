class LikesController < ApplicationController

  def create
    Like.create(user_id: current_user.id, objective_id: params[:id] )
    redirect_to objectives_path
  end

  def destory
    Like.find_by(user_id: current_user.id, objective_id: params[:id]).destroy
    redirect_to objectives_path
  end


end
