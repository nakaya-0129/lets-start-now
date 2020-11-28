class ObjectivesController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
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

  private
  def objects_params
    params.require(:objective).permit(:category_id, :hobit_id, :one_day, :one_week, :three_month, :year).merge(user_id: current_user.id)
  end
end