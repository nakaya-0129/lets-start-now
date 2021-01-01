class CommentsController < ApplicationController
  def create
    Comment.create(comment_params)
    redirect_to objective_path(params[:objective_id])
  end

  def destory
    @comment = Comment.find(params[:id])
    if @comment.user_id == current_user.id
       @comment.destory(comment_params)
       redirect_to root_path
    else
     render :show 
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, objective_id: params[:objective_id])
  end
end