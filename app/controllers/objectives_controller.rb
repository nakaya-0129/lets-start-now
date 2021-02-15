class ObjectivesController < ApplicationController
  before_action :authenticate_user!, except: [:top]
  before_action :objective_find, only: [:show,:edit,:update,:destroy]
  before_action :searching_object, only: [:search,:index]
  
  def top

  end

  def index
    @objectives = Objective.all.order(created_at: :desc)

  end

  def new
    @objective = Objective.new
  end

  def create
      @objective = Objective.new(objects_params)
      @objective.user_id = current_user.id

      if @objective.save
        flash[:success] = "目標を投稿しました"
        redirect_to objectives_path
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
      @comment = Comment.new
      @comments =@objective.comments.order(created_at: :desc)
    end

    def edit
    end

    def update
      if @objective.update(objects_params)
        redirect_to objectives_path
      else
        render :edit
      end
    end

    def destroy
      if @objective.user_id == current_user.id
        @objective.destroy
      redirect_to objectives_path
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

def objective_find
  @objective = Objective.find(params[:id])
end

end
