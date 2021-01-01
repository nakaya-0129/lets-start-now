class ObjectivesController < ApplicationController
  before_action :authenticate_user!, except: [:index,:show]
  before_action :searching_object, only: [:index,:search]

  def index
    @objectives = Objective.all
  end

  def new
    @objective = Objective.new
  end

  def create
      @objective = Objective.new(objects_params)
      if @objective.save
        redirect_to root_path
      else
        render :new
      end
    end

    def search
      @selection = @q.result
      category_id = params[:q][:category_id_eq]
      @category_id = Category.find_by(id: category_id)
    end

    def show
      @objective = Objective.find(params[:id])
      @comment = Comment.new
      @comments = @objective.comments.includes(:user)
    end

    def edit
      @objective = Objective.find(params[:id])
    end

    def update
      @objective = Objective.find(params[:id])
      if @objective.update(objects_params)
        redirect_to root_path
      else
        render :edit
      end
    end

    def destroy
      @objective =Objective.find(params[:id])
      if @objective.user_id == current_user.id
        @objective.destroy
      redirect_to root_path
      else
        render :show
      end
    end


  private
  def objects_params
    params.require(:objective).permit(:image, :user_name, :category_id, :hobit_id, :one_day, :action_plan, :hobituation, :merit, :demerit).merge(user_id: current_user.id)
  end

def searching_object
 @q = Objective.ransack(params[:q])
end
end
