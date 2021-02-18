class CommentsController < ApplicationController
  def create
    @objective = Objective.find(params[:objective_id])
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
      if @comment.save
        flash[:success] ="コメントを投稿しました"
        redirect_back(fallback_location: objective_path(@objective.id))
      else
        redirect_back(fallback_location: objective_path(@objective.id))
      end
   end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.user_id == current_user.id
       @comment.destroy
       flash[:success] ="コメントを削除しました"
       redirect_to request.referer
    else
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, objective_id: params[:objective_id])
  end
end